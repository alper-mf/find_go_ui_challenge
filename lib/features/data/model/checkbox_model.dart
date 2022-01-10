import 'package:find_go_app/features/presentation/components/utility/hex_color.dart';
import 'package:flutter/material.dart';

class CheckBoxListTileModel {
  int itemID;
  String img;
  String title;
  bool isCheck;
  List<Color> colors;

  CheckBoxListTileModel({
    required this.itemID,
    required this.img,
    required this.title,
    required this.isCheck,
    required this.colors,
  });

  static List<CheckBoxListTileModel> getUsers() {
    return <CheckBoxListTileModel>[
      CheckBoxListTileModel(
        itemID: 1,
        img: 'assets/bottom_sheet_icons/cup_icon.svg',
        title: "Cup",
        isCheck: true,
        colors: [
          Colors.orange.shade400,
          Colors.orange.shade500,
        ],
      ),
      CheckBoxListTileModel(
        itemID: 2,
        img: 'assets/bottom_sheet_icons/movie_icon.svg',
        title: "Movie",
        isCheck: false,
        colors: [
          Colors.orange.shade400,
          Colors.orange.shade500,
        ],
      ),
      CheckBoxListTileModel(
        itemID: 4,
        img: 'assets/bottom_sheet_icons/place_icon.svg',
        title: "Place",
        isCheck: false,
        colors: [
          Colors.orange.shade400,
          Colors.orange.shade500,
        ],
      ),
      CheckBoxListTileModel(
        itemID: 5,
        img: 'assets/bottom_sheet_icons/car_icon.svg',
        title: "Car",
        isCheck: true,
        colors: [
          HexColor('00C886'),
          HexColor('00BB86'),
        ],
      ),
    ];
  }
}
