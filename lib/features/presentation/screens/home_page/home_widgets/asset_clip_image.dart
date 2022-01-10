import 'package:find_go_app/features/common/constants/size_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AssetClipImage extends StatelessWidget {
  final String picture;
  final double radius;
  const AssetClipImage({Key? key, required this.picture, required this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.kHeight * .1,
      width: Sizes.kHeight * .1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          padding: const EdgeInsets.only(top: 10),
          color: Colors.grey.shade100,
          child: SvgPicture.asset(
            'assets/profile_pictures/$picture',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
