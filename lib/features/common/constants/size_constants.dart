import 'package:get/get.dart';

class Sizes {
  // Sizes._();

  static double kHeight = Get.height;
  static double kWidth = Get.width;

  static double kPaddingH = Get.height * .02;
  static double kPaddingW = Get.width * .02;

  static double appbarRadius = appbarMaxHeight * .2;
  static double appbarMaxHeight = Sizes.kHeight * .4;
  static double appbarMinHeight = Get.height * .11;
}
