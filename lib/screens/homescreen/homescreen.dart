import 'package:flutter/material.dart';
import 'package:pizza_restaurant/screens/base_screen.dart';
import 'package:pizza_restaurant/screens/homescreen/best_selling.dart';
import 'package:pizza_restaurant/screens/homescreen/promo.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget screen = Basescreen().build(context);
    var columnChildren = ((((screen as Scaffold).body as SafeArea).child
                as SingleChildScrollView)
            .child as Column)
        .children;
    columnChildren.addAll(<Widget>[
      Promo(),
      BestSelling(),
    ]);
    return screen;
  }
}
