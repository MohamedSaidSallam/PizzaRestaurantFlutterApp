import 'package:flutter/material.dart';
import 'package:pizza_restaurant/screens/base_screen.dart';

import 'package:pizza_restaurant/theme/style.dart' as style;

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Basescreen screen = Basescreen()
      ..bodyItems = <Widget>[
        OrderHeader(),
        OrderCardList(),
        CartFooter(),
      ]
      ..inCart = true;
    return screen.build(context);
  }
}

class OrderHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "My Cart",
                style: style.headerTextStyle,
              )),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Item",
                style: style.normalTextStyle,
              ),
              Text(
                "Total Price",
                style: style.normalTextStyle,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class OrderCardList extends StatelessWidget {
  const OrderCardList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      OrderCard(),
      OrderCard(),
      OrderCard(),
      OrderCard(),
      OrderCard(),
      OrderCard(),
      OrderCard(),
      OrderCard(),
      OrderCard(),
      OrderCard(),
      OrderCard(),
      OrderCard(),
    ]);
  }
}

class OrderCard extends StatelessWidget {
  const OrderCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        "assets/images/pepperoni-pizza.jpg",
        fit: BoxFit.cover,
      ),
      title: Text(
        "3 Cheese X 2 Toppings",
        style: style.cardTitletStyle,
      ),
      subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Price: 50",
              style: style.descTextStyle,
            ),
            Text(
              "Quantity: 2",
              style: style.descTextStyle,
            )
          ]),
      trailing: Text(
        "100\$",
        style: style.normalTextStyle,
      ),
    );
  }
}

class CartFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Divider(thickness: 1.5,),
        Padding(
          padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Total", style: style.normalTextStyle,),
              Text("XXXX\$", style: style.normalTextStyle,),
            ],
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: RaisedButton(
            onPressed: () {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text("WIP"),
              ));
            },
            color: style.mainColor,
            child: Text(
              "Checkout",
              style: style.normalTextStyle.apply(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
