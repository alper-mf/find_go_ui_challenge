import 'package:find_go_app/features/common/constants/size_constants.dart';
import 'package:find_go_app/features/common/constants/text_style_constants.dart';
import 'package:find_go_app/features/presentation/screens/find_place_page/view_model/find_place_model.dart';
import 'package:find_go_app/features/presentation/screens/home_page/home_widgets/asset_clip_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math' as math;

import 'package:get/get.dart';

class ReviewCardWidget extends GetView<FindPlaceModel> {
  const ReviewCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: Sizes.kPaddingW * 2),
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(math.pi),
          child: const AssetClipImage(
            picture: 'person_1.svg',
            radius: 10,
          ),
        ),
        SizedBox(width: Sizes.kPaddingW),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Tomy Jones',
                style: ITextStyle.reviewTitle(Colors.black),
              ),
              SizedBox(height: Sizes.kPaddingH / 4),
              Row(
                children: controller.ratings.map((e) {
                  return SvgPicture.asset(
                    e,
                    height: 14,
                  );
                }).toList(),
              ),
              SizedBox(height: Sizes.kPaddingH / 4),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipis.',
                maxLines: 8,
                style: ITextStyle.reviewSubTitle(Colors.black.withOpacity(0.5)),
              ),
            ],
          ),
        ),
        SizedBox(width: Sizes.kPaddingW * 2),
      ],
    );
  }
}
