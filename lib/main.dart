import 'package:find_go_app/features/common/services/init_service.dart';
import 'package:find_go_app/features/presentation/screens/find_place_page/find_place_page.dart';
import 'package:find_go_app/features/presentation/screens/home_page/home.dart';
import 'package:find_go_app/features/presentation/screens/welcome_page/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  InitializeServices().dependencies();
  //Appbar eklendi
  //Status Bar Color And Set Device Orientations
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ],
  ).then(
    (_) async {
      runApp(GetMaterialApp(
        debugShowCheckedModeBanner: true,
        home: const WelcomePage(),
        theme: ThemeData(),
      ));
    },
  );
}
