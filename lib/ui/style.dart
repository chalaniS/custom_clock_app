import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppStyle {
  static Color primaryColor = const Color(0xFF2253FF);
  static Color primaryColorDark = const Color(0xFF193bb1);

  static TextStyle mainText = const TextStyle(
    color: Colors.black,
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
  );
  static TextStyle mainTextWhite = const TextStyle(
    color: Colors.white,
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
  );
  static TextStyle mainTextThin = const TextStyle(
    color: Colors.black,
    fontSize: 32.0,
    fontWeight: FontWeight.w300,
  );

  static TextStyle mainTextThinWhite = const TextStyle(
    color: Colors.white,
    fontSize: 32.0,
    fontWeight: FontWeight.w200,
  );
}
