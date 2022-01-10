import 'package:find_go_app/features/common/constants/size_constants.dart';
import 'package:find_go_app/features/common/constants/text_style_constants.dart';
import 'package:find_go_app/features/presentation/screens/home_page/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'crounded_button.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CRoundedButton(
          text: 'Sign Up',
          isColoredButton: true,
          buttonColor: Colors.orange,
          buttonTextStyle: ITextStyle.buttonTextStyle(
            isColoredButton: true,
            buttonTextColor: Colors.white,
          ),
        ),
        SizedBox(height: Sizes.kPaddingH * 1.5),
        GestureDetector(
          onTap: () => Get.to(const HomePage()),
          child: CRoundedButton(
            text: 'Login',
            isColoredButton: false,
            buttonColor: Colors.white,
            buttonTextStyle: ITextStyle.buttonTextStyle(
              isColoredButton: false,
              buttonTextColor: Colors.orange.shade400,
            ),
          ),
        ),
      ],
    );
  }
}
