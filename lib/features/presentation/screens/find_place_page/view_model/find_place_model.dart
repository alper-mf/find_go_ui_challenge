import 'dart:async';

import 'package:find_go_app/features/data/model/checkbox_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class FindPlaceModel extends GetxController {
  final Completer<GoogleMapController> mapController = Completer();
  PanelController bottomSlidingBarCont = PanelController();
  GlobalKey scaffoldKeyFindPlace = GlobalKey();

  final CameraPosition kGooglePlex = const CameraPosition(
    target: LatLng(40.997604, 29.150877),
    zoom: 15.4746,
  );

  List<CheckBoxListTileModel> checkBoxListTileModel =
      CheckBoxListTileModel.getUsers();

  var ratings = [
    'assets/stars/filled_star.svg',
    'assets/stars/filled_star.svg',
    'assets/stars/filled_star.svg',
    'assets/stars/filled_star.svg',
    'assets/stars/empty_star.svg',
  ];
}
