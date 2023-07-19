import 'package:flutter/material.dart';

Color primary = Colors.deepPurple;

class Styles {
  static Color primaryColor = primary;
  static Color? textColor = Colors.grey[500];
  static Color bgColor = const Color(0xFFeeedf2);
  static Color? deepPurpleShade = Colors.deepPurple[100];
  static Color? pink = Colors.pink[100];
  static Color white = Colors.white;
  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headlineStyle1 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headlineStyle2 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headlineStyle3 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headlineStyle4 = const TextStyle(
    fontSize: 15,
  );
}
