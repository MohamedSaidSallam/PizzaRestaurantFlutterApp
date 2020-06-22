import 'package:flutter/material.dart';
import 'package:pizza_restaurant/theme/style.dart' as style;

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        HeaderIconButton(Icons.menu, 60.0, "Side Menu Button",
            () => Scaffold.of(context).openDrawer()),
        Text(
          "Pizza Restaurant",
          style: style.titleTextStyle,
        ),
        HeaderIconButton(
            Icons.shopping_cart,
            60.0,
            "Shopping Cart Button",
            () => Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("Temp Msg"),
                ))),
      ],
    );
  }
}

class HeaderIconButton extends StatelessWidget {
  final IconData _icon;
  final double _size;
  final String _semanticLabel;
  final void Function() _onIconTap;

  const HeaderIconButton(
    this._icon,
    this._size,
    this._semanticLabel,
    this._onIconTap, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this._onIconTap,
      child: Icon(
        this._icon,
        color: style.accentColor,
        semanticLabel: this._semanticLabel,
        size: this._size,
      ),
    );
  }
}
