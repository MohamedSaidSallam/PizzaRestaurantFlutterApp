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
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: Icon(Icons.local_pizza),
            title: Text('Pizza'),
            onTap: () {
              Navigator.pushNamed(context, '/Pizza');
            },
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Starters'),
            onTap: () {
              Navigator.pushNamed(context, '/Starters');
            },
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Salads'),
            onTap: () {
              Navigator.pushNamed(context, '/Salads');
            },
          ),
          ListTile(
            leading: Icon(Icons.local_drink),
            title: Text('Drinks'),
            onTap: () {
              Navigator.pushNamed(context, '/Drinks');
            },
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
