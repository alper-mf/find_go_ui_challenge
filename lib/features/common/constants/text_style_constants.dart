import 'package:flutter/material.dart';

class ITextStyle {
  static TextStyle h1(Color textColor) {
    return TextStyle(
      color: textColor,
      fontSize: 42,
      fontWeight: FontWeight.bold,
      fontFamily: 'Aileron-Heavy',
    );
  }

  static TextStyle h2(Color textColor) {
    return TextStyle(
      color: textColor,
      fontSize: 28,
      fontWeight: FontWeight.bold,
      fontFamily: 'Aileron-Bold',
    );
  }

  static TextStyle subHead(Color textColor) {
    return TextStyle(
      color: textColor,
      fontSize: 18,
      fontFamily: 'Aileron-Regular',
      letterSpacing: 3,
    );
  }

  static TextStyle bodySemiBold(Color textColor) {
    return TextStyle(
      color: textColor,
      fontSize: 12,
      fontFamily: 'Aileron-Light',
    );
  }

  static TextStyle caption(Color textColor) {
    return TextStyle(
      color: textColor,
      fontSize: 14,
      fontFamily: 'Montserrat-Regular',
    );
  }

  static TextStyle searchTextStyle(Color textColor) {
    return TextStyle(
      color: textColor,
      fontSize: 14,
      fontFamily: 'Aileron-SemiBold',
    );
  }

  static TextStyle reviewTitle(Color textColor) {
    return TextStyle(
      color: textColor,
      fontSize: 14,
      fontWeight: FontWeight.bold,
      fontFamily: 'Montserrat-SemiBold',
    );
  }

  static TextStyle reviewSubTitle(Color textColor) {
    return TextStyle(
      color: textColor,
      fontSize: 14,
      fontFamily: 'Montserrat-Regular',
    );
  }

  static TextStyle buttonTextStyle(
      {required bool isColoredButton, required Color buttonTextColor}) {
    if (isColoredButton) {
      return const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat-SemiBold',
      );
    } else {
      return TextStyle(
        color: buttonTextColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat-SemiBold',
      );
    }
  }
}
