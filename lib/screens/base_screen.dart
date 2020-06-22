import 'package:flutter/material.dart';
import 'package:pizza_restaurant/screens/Header.dart';
import 'package:pizza_restaurant/screens/maindrawer.dart';
import 'package:pizza_restaurant/screens/scroll_to_top.dart';

class Basescreen extends StatelessWidget {
  final ScrollController _scrollController = new ScrollController();

  List<Widget> bodyItems;
  bool inCart = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: <Widget>[
              Header(inCart: inCart),
              ...?
              bodyItems
            ],
          ),
        ),
      ),
      floatingActionButton: ScrollToTop(scrollController: _scrollController),
      drawer: MainDrawer(),
    );
  }
}
