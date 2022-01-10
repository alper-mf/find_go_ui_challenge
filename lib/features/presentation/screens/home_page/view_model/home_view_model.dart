import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomeViewModel extends GetxController {
  final Completer<GoogleMapController> controller = Completer();
  final TextEditingController filter = TextEditingController();
  PanelController appBarController = PanelController();
  PanelController bottomSlidingBarCont = PanelController();

  final GlobalKey globalKey = GlobalKey();

  final CameraPosition kGooglePlex = const CameraPosition(
    target: LatLng(40.997604, 29.150877),
    zoom: 14.4746,
  );

  List<String> bottomIconList = [
    'assets/bottom_icons/home_icon.svg',
    'assets/bottom_icons/person_icon.svg',
    'assets/bottom_icons/location_icon.svg',
    'assets/bottom_icons/noti_icon.svg',
    'assets/bottom_icons/settings_icon.svg',
  ];
}
