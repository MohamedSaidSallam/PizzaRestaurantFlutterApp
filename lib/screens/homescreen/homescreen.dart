import 'package:flutter/material.dart';
import 'package:pizza_restaurant/screens/Header.dart';
import 'package:pizza_restaurant/screens/best_selling.dart';
import 'package:pizza_restaurant/screens/homescreen/maindrawer.dart';
import 'package:pizza_restaurant/screens/homescreen/scroll_to_top.dart';
import 'package:pizza_restaurant/screens/promo.dart';

class HomePage extends StatelessWidget {
  final ScrollController _scrollController = new ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: <Widget>[
              Header(),
              Promo(),
              BestSelling(),
            ],
          ),
        ),
      ),
      floatingActionButton: ScrollToTop(scrollController: _scrollController),
      drawer: MainDrawer(),
    );
  }
}
