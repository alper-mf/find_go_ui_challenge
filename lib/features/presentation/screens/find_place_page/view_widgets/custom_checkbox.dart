import 'package:find_go_app/features/common/constants/size_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCheckBox extends StatelessWidget {
  final String assetName;
  final bool isSelected;
  final List<Color> backgroundColor;
  const CustomCheckBox(
      {Key? key,
      required this.assetName,
      required this.isSelected,
      required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.appbarRadius / 6),
          boxShadow: [
            BoxShadow(
              color: isSelected
                  ? Colors.black.withOpacity(0.1)
                  : Colors.transparent,
              spreadRadius: 0,
              blurRadius: 12,
              offset: const Offset(0, 16), // changes position of shadow
            ),
          ],
          gradient: LinearGradient(
              colors: isSelected
                  ? backgroundColor
                  : [
                      Colors.white.withOpacity(0.2),
                      Colors.white.withOpacity(0.2)
                    ])),
      child: SvgPicture.asset(
        assetName,
        width: Sizes.kWidth * .07,
      ),
    );
  }
}
