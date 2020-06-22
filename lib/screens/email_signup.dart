import 'package:flutter/material.dart';

class EmailSignup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("Sign Up for Deals Notifications"),
        TextField(
          decoration:
              InputDecoration(border: InputBorder.none, hintText: 'Your Email'),
          onSubmitted: (String value) => subCompleteMsg(context),
        ),
        FlatButton(
          onPressed: () {
            subCompleteMsg(context);
          },
          child: Text("Subscribe"),
        )
      ],
    );
  }

  void subCompleteMsg(BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("Thanks For Subscribing."),
    ));
  }
}
