import 'package:flutter/material.dart';
import 'package:pizza_restaurant/screens/cart/cart_screen.dart';
import 'package:pizza_restaurant/screens/category_list/category_list.dart';
import 'package:pizza_restaurant/screens/homescreen/homescreen.dart';
import 'package:pizza_restaurant/theme/style.dart' as style;

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza Restaurant',
      theme: style.theme,
      routes: {
        '/': (context) => HomePage(),
        '/cart': (context) => CartScreen(),
        '/Pizza': (context) => CategoryList("Pizza"),
        '/Starters': (context) => CategoryList("Starters"),
        '/Salads': (context) => CategoryList("Salads"),
        '/Drinks': (context) => CategoryList("Drinks"),
      },
    );
  }
}
