import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
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
        GridView.count(
          // primary: false,
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 5.0,
          shrinkWrap: true,
          crossAxisCount: 2,
          children: <Widget>[
            PizzaCard(),
            PizzaCard(),
            PizzaCard(),
            PizzaCard(),
            PizzaCard(),
            PizzaCard(),
            PizzaCard(),
            PizzaCard(),
            PizzaCard(),
            PizzaCard(),
            PizzaCard(),
            PizzaCard(),
            PizzaCard(),
            PizzaCard(),
            PizzaCard(),
            PizzaCard(),
          ],
        ),
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
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text("Temp"),
            ));
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

class PizzaCard extends StatelessWidget {
  static const double descLeftPadding = 4.0;

  const PizzaCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(10.0),
      height: 300.0,
      width: double.maxFinite,
      child: Card(
        elevation: 7.0,
        // padding: const EdgeInsets.all(8),
        child: Container(
          constraints: BoxConstraints(minHeight: 200.0),
          child: InkWell(
            splashColor: style.mainColor,
            onTap: () => Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text("Pizza Card Clicked"))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  "assets/images/pepperoni-pizza.jpg",
                  fit: BoxFit.cover,
                ),
                AutoSizeText(
                  "Awesome Pizza",
                  minFontSize: 10.0,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: style.normalTextStyle,
                ),
                // Padding(
                //   padding: const EdgeInsets.all(descLeftPadding),
                //   child: AutoSizeText(
                //       "Grilled Chicken",
                //       // "Grilled Chicken, Tomato, Fresh Mushroom, Ranch Sauce",
                //       maxLines: 3,
                //       overflow: TextOverflow.ellipsis,
                //       style: style.descTextStyle),
                // ),
                Padding(
                  padding:
                      const EdgeInsets.fromLTRB(descLeftPadding, 5.0, 0, 0),
                  child: AutoSizeText(
                    "Starting at 50\$",
                  ),
                ),
                // Text("Test"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
