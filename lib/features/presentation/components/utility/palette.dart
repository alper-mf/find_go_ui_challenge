import 'package:flutter/material.dart';
import 'hex_color.dart';

class Palette {
  static Color scaffold = HexColor('#627cf9');
  static Color orangeColor = HexColor('#ffad19');
  static Color searchbarColor = Colors.white;

  static Color defaultGreyColor = Colors.black.withOpacity(0.5);

  static const LinearGradient createRoomGradient = LinearGradient(
    colors: [Color(0xFF496AE1), Color(0xFFCE48B1)],
  );

  static const Color online = Color(0xFF4BCB1F);

  static const LinearGradient storyGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.transparent, Colors.black26]);
}
