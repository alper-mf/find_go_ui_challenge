import 'package:find_go_app/features/common/constants/size_constants.dart';
import 'package:find_go_app/features/common/constants/text_style_constants.dart';
import 'package:find_go_app/features/presentation/components/utility/palette.dart';
import 'package:find_go_app/features/presentation/screens/find_place_page/find_place_page.dart';
import 'package:find_go_app/features/presentation/screens/home_page/home_widgets/searchbar_widget.dart';
import 'package:find_go_app/features/presentation/screens/home_page/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'asset_clip_image.dart';

class AppBarArea extends GetView<HomeViewModel> {
  const AppBarArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: Sizes.kWidth,
            decoration: BoxDecoration(
                color: Palette.scaffold,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(Sizes.appbarRadius / 2),
                  bottomRight: Radius.circular(Sizes.appbarRadius / 2),
                )),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const AssetClipImage(
                        picture: 'person_1.svg',
                        radius: 120,
                      ),
                      SizedBox(height: Sizes.kPaddingH * .9),
                      Text(
                        'Jack Lemonade',
                        style: ITextStyle.subHead(Colors.white),
                      ),
                      SizedBox(height: Sizes.kPaddingH * .2),
                      Text('lemonadejack.mail.com',
                          style: ITextStyle.bodySemiBold(Colors.white)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                      right: 8,
                    ),
                    child: Text(
                      'Where do you want to go today?',
                      textAlign: TextAlign.center,
                      style: ITextStyle.h2(Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
            onTap: () {
              controller.appBarController.isPanelClosed
                  ? controller.appBarController.open()
                  : controller.appBarController
                      .close()
                      .then((value) => Get.to(const FindPlacePage()));
            },
            child: const SearchBarWidget()),
      ],
    );
  }
}
