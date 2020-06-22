import 'package:flutter/material.dart';

const Color mainColor = Color(0xFFE24040);
const Color accentColor = Color(0xFF707070);

const String mainFont = "Roboto";
const String monoFont = "RobotoMono";

ThemeData theme = ThemeData(
        primarySwatch: Colors.red,
        fontFamily: mainFont,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );

const titleTextStyle = TextStyle(
  fontFamily: mainFont,
  fontWeight: FontWeight.w300,
  fontSize: 28.0,
  color: mainColor,
);

const headerTextStyle = TextStyle(
  fontFamily: mainFont,
  fontWeight: FontWeight.w700,
  fontSize: 28.0,
  color: accentColor,
);

const normalTextStyle = TextStyle(
  fontFamily: mainFont,
  fontWeight: FontWeight.w400,
  fontSize: 20.0,
  color: accentColor,
);

const cardTitletStyle = TextStyle(
  fontFamily: mainFont,
  fontWeight: FontWeight.w700,
  fontSize: 20.0,
  color: accentColor,
);

const descTextStyle = TextStyle(
  fontFamily: monoFont,
  fontWeight: FontWeight.w300,
  fontStyle: FontStyle.italic,
  fontSize: 12.0,
  color: accentColor,
);

const detailsTitleStyle = TextStyle(
  fontFamily: mainFont,
  fontWeight: FontWeight.w700,
  fontSize: 32.0,
  color: accentColor,
);

const detailsDescStyle = TextStyle(
  fontFamily: monoFont,
  fontWeight: FontWeight.w400,
  fontSize: 20.0,
  color: accentColor,
);

const sectionHeaderStyle = TextStyle(
  fontFamily: mainFont,
  fontWeight: FontWeight.w700,
  fontSize: 20.0,
  color: accentColor,
);
