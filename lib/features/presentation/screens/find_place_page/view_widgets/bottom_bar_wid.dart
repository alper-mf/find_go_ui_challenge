import 'package:find_go_app/features/common/constants/size_constants.dart';
import 'package:find_go_app/features/common/constants/text_style_constants.dart';
import 'package:find_go_app/features/presentation/components/utility/palette.dart';
import 'package:find_go_app/features/presentation/screens/find_place_page/view_model/find_place_model.dart';
import 'package:find_go_app/features/presentation/screens/find_place_page/view_widgets/review_card_wid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_checkbox.dart';

class BottomBarWid extends StatefulWidget {
  const BottomBarWid({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomBarWid> createState() => _BottomBarWidState();
}

class _BottomBarWidState extends State<BottomBarWid> {
  FindPlaceModel controller = Get.put(FindPlaceModel());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.kHeight,
      width: Get.width,
      decoration: BoxDecoration(
        //color: Colors.red,
        borderRadius: BorderRadius.circular(Sizes.appbarRadius / 2),
      ),
      child: Column(
        children: [
          Flexible(
            child: Container(
              height: Sizes.kHeight,
              width: Sizes.kWidth,
              decoration: BoxDecoration(
                color: Palette.scaffold,
                borderRadius: BorderRadius.circular(Sizes.appbarRadius / 2),
              ),
              child: Column(
                children: [
                  SizedBox(height: Sizes.kPaddingH),
                  Text(
                    'Find The Place',
                    style: ITextStyle.caption(Colors.white),
                  ),
                  SizedBox(height: Sizes.kPaddingH),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: controller.checkBoxListTileModel.map((e) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            controller.checkBoxListTileModel
                                .indexWhere((element) {
                              if (element.itemID == e.itemID) {
                                e.isCheck = !element.isCheck;
                                return true;
                              } else {
                                return false;
                              }
                            });
                          });
                        },
                        child: CustomCheckBox(
                            assetName: e.img,
                            isSelected: e.isCheck,
                            backgroundColor:
                                e.isCheck ? e.colors : [Colors.white]),
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: Sizes.kHeight,
              width: Sizes.kWidth,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: Sizes.kPaddingH),
                  Text(
                    'Reviews',
                    style: ITextStyle.searchTextStyle(
                        Colors.black.withOpacity(0.5)),
                  ),
                  SizedBox(height: Sizes.kPaddingH),
                  const ReviewCardWidget()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
