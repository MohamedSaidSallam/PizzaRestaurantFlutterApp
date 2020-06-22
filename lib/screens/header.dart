import 'package:flutter/material.dart';
import 'package:pizza_restaurant/theme/style.dart' as style;

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        HeaderIconButton(Icons.menu, "Side Menu Button",
            () => Scaffold.of(context).openDrawer()),
        CompanyTitle(),
        HeaderIconButton(
            Icons.shopping_cart,
            "Shopping Cart Button",
            () => Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("WIP: Cart"),
                ))),
      ],
    );
  }
}

class CompanyTitle extends StatelessWidget {
  const CompanyTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset(
          "assets/icons/logo.png",
          fit: BoxFit.cover,
          height: 38.0,
        ),
        Text(
          "Pizza Restaurant",
          style: style.titleTextStyle,
        ),
      ],
    );
  }
}

class HeaderIconButton extends StatelessWidget {
  final IconData _icon;
  final String _semanticLabel;
  final void Function() _onIconTap;

  const HeaderIconButton(
    this._icon,
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
        size: 60.0,
      ),
    );
  }
}
