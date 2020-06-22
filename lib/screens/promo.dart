import 'package:flutter/material.dart';

class Promo extends StatefulWidget {
  @override
  _PromoState createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(height: 240.0),
      decoration: BoxDecoration(color: Colors.purple),
      child: Image.asset(
        "assets/images/mahyar-motebassem-pGA4zHvpo5E-unsplash-1350x1080.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
