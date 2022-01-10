import 'package:find_go_app/features/common/constants/size_constants.dart';
import 'package:find_go_app/features/presentation/components/utility/palette.dart';
import 'package:find_go_app/features/presentation/screens/home_page/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BottomAppBarWidget extends GetView<HomeViewModel> {
  const BottomAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: Sizes.kWidth,
        height: Sizes.kHeight * .1,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: controller.bottomIconList.map((e) {
              return Expanded(
                child: SvgPicture.asset(
                  e,
                  color: Palette.scaffold,
                  height: Sizes.kHeight * .03,
                  width: Sizes.kWidth,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
