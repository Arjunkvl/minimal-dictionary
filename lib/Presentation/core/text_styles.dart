import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

TextStyle materialthemebodylarge(Color color) {
  return TextStyle(
    fontSize: 16,
    color: color,
    decoration: TextDecoration.none,
    fontFamily: 'Roboto-Regular',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    height: 24 / 16,
    letterSpacing: 0.5,
  );
}

TextStyle materialthemebodymedium(Color color) {
  return TextStyle(
    fontSize: 14,
    color: color,
    decoration: TextDecoration.none,
    fontFamily: 'Roboto-Regular',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    height: 20 / 14,
    letterSpacing: 0.25,
  );
}

TextStyle materialthemeheadlinesmall(Color color) {
  return TextStyle(
    fontSize: 24,
    color: color,
    decoration: TextDecoration.none,
    fontFamily: 'Roboto-Regular',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    height: 32 / 24,
    letterSpacing: 0,
  );
}

TextStyle materialthemebodysmall(Color color) {
  return TextStyle(
    fontSize: 12,
    color: color,
    decoration: TextDecoration.none,
    fontFamily: 'Roboto-Regular',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    height: 16 / 12,
    letterSpacing: 0.4,
  );
}
