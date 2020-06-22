import 'package:flutter/material.dart';
import 'package:pizza_restaurant/screens/base_screen.dart';
import 'package:pizza_restaurant/screens/pizza_card.dart';
import 'package:pizza_restaurant/theme/style.dart' as style;

class CategoryList extends StatelessWidget {
  final String _categoryName;

  CategoryList(this._categoryName, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Basescreen screen = Basescreen()
      ..bodyItems = <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              _categoryName,
              style: style.headerTextStyle,
            ),
          ),
        ),
        PizzaCardList(),
      ];
    return screen.build(context);
  }
}
