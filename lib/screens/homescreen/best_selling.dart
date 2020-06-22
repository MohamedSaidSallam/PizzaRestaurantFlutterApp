import 'package:flutter/material.dart';
import 'package:pizza_restaurant/screens/pizza_card.dart';
import 'package:pizza_restaurant/theme/style.dart' as style;

class BestSelling extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: const Text(
            "Best Selling",
            style: style.headerTextStyle,
          ),
        ),
        PizzaCardList(),
        ViewAllButton()
      ],
    );
  }
}

class ViewAllButton extends StatelessWidget {
  const ViewAllButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: double.infinity),
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/Pizza');
          },
          color: style.mainColor,
          child: Text(
            "View all",
            style: style.normalTextStyle.apply(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
