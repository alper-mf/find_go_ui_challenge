import 'package:find_go_app/features/common/constants/img_constants.dart';
import 'package:find_go_app/features/common/constants/size_constants.dart';
import 'package:find_go_app/features/common/constants/text_style_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          ImageConstants.logo,
          height: Get.height * .15,
          width: Get.width,
        ),
        SizedBox(
          height: Sizes.kPaddingH / 1.5,
        ),
        Text(
          'FindGO',
          style: ITextStyle.h1(Colors.white),
        ),
        SizedBox(
          height: Sizes.kPaddingH / 3,
        ),
        Text(
          'Find every place around you',
          style: ITextStyle.caption(Colors.white),
        )
      ],
    );
  }
}
