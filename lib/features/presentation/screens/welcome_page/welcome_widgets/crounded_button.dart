import 'package:find_go_app/features/common/constants/size_constants.dart';
import 'package:flutter/material.dart';

class CRoundedButton extends StatelessWidget {
  final String? text;
  final bool isColoredButton;
  final TextStyle buttonTextStyle;
  final Color buttonColor;
  const CRoundedButton({
    Key? key,
    required this.text,
    required this.buttonTextStyle,
    required this.buttonColor,
    required this.isColoredButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Sizes.kWidth / 2.5,
      padding: const EdgeInsets.all(10),
      child: Text(text!, textAlign: TextAlign.center, style: buttonTextStyle),
      decoration: BoxDecoration(
        color: isColoredButton ? buttonColor : Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 12,
            offset: const Offset(0, 16), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
