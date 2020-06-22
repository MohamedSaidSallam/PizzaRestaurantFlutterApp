import 'package:flutter/material.dart';

import 'package:pizza_restaurant/theme/style.dart' as style;

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 150.0,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: style.mainColor,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.local_pizza),
            title: Text('Pizza'),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Starters'),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Salads'),
          ),
          ListTile(
            leading: Icon(Icons.local_drink),
            title: Text('Drinks'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text("WIP"),
              ));
            },
          ),
        ],
      ),
    );
  }
}
