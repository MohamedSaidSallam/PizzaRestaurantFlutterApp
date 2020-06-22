import 'package:flutter/material.dart';

class ScrollToTop extends StatelessWidget {
  const ScrollToTop({
    Key key,
    @required ScrollController scrollController,
  })  : _scrollController = scrollController,
        super(key: key);

  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        _scrollController.animateTo(
          0.0,
          curve: Curves.easeOut,
          duration: const Duration(milliseconds: 300),
        );
      },
      child: Icon(Icons.arrow_upward),
    );
  }
}
