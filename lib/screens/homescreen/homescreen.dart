import 'package:flutter/material.dart';
import 'package:pizza_restaurant/screens/base_screen.dart';
import 'package:pizza_restaurant/screens/homescreen/best_selling.dart';
import 'package:pizza_restaurant/screens/homescreen/promo.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Basescreen screen = Basescreen()
      ..bodyItems = <Widget>[
        Promo(),
        BestSelling(),
      ];
    return screen.build(context);
  }
}
