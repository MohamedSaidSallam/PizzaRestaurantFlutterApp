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
        PizzaCardList(),
        ViewAllButton()
      ],
    );
  }
}

class PizzaCardList extends StatelessWidget {
  const PizzaCardList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
      crossAxisSpacing: 15.0,
      mainAxisSpacing: 5.0,
      childAspectRatio: 63/100, // item width / item height
      shrinkWrap: true,
      crossAxisCount: 2,
      children: getPizzaCards(),
    );
  }

  List<Widget> getPizzaCards() {
    return <Widget>[
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
    ];
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
  static const double descLeftPadding = 5.0;

  const PizzaCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7.0,
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
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: AutoSizeText(
                  "3 Cheese X 2 Toppings",
                  minFontSize: 16.0,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: style.cardTitletStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(descLeftPadding, 0.0, 1.0, 0.0),
                child: AutoSizeText(
                    "Grilled Chicken, Tomato, Onions, Green Pepper, Fresh Mushroom, Jalapeno",
                    minFontSize: 10.0,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: style.descTextStyle),
              ),
              Divider(
                thickness: 0.7,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(descLeftPadding, 5.0, 0.0, 0.0),
                child: AutoSizeText(
                  "Starting at 50\$",
                  style: style.descTextStyle,
                ),
              ),
            ],
        ),
      ),
    );
  }
}
