import 'package:find_go_app/features/common/constants/img_constants.dart';
import 'package:find_go_app/features/common/constants/size_constants.dart';
import 'package:find_go_app/features/presentation/components/utility/palette.dart';
import 'package:find_go_app/features/presentation/screens/welcome_page/welcome_widgets/bottom_widget.dart';
import 'package:find_go_app/features/presentation/screens/welcome_page/welcome_widgets/top_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.scaffold,
      body: Stack(
        children: <Widget>[
          SizedBox(
            height: Sizes.kHeight,
            width: Sizes.kWidth,
            child: Image.asset(
              ImageConstants.tilesBg,
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: SizedBox(
              height: Get.height,
              width: Get.width,
              child: Column(
                children: const <Widget>[
                  Spacer(
                    flex: 2,
                  ),
                  Flexible(
                    flex: 3,
                    child: TopWidget(),
                  ),
                  Flexible(
                    flex: 2,
                    child: BottomWidget(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
