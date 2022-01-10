import 'package:find_go_app/features/common/constants/size_constants.dart';
import 'package:find_go_app/features/presentation/screens/find_place_page/view_model/find_place_model.dart';
import 'package:find_go_app/features/presentation/screens/home_page/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'bottom_bar_wid.dart';

class SlideUpWidget extends GetView<FindPlaceModel> {
  const SlideUpWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      controller: controller.bottomSlidingBarCont,
      maxHeight: Sizes.appbarMaxHeight,
      minHeight: Get.height * .13,
      defaultPanelState: PanelState.OPEN,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(Sizes.appbarRadius / 2),
        topRight: Radius.circular(Sizes.appbarRadius / 2),
      ),
      color: Colors.white,
      backdropColor: Colors.transparent,
      slideDirection: SlideDirection.UP,
      boxShadow: const [],
      panel: const BottomBarWid(),
      body: SizedBox(
        height: Sizes.kHeight,
        width: Sizes.kWidth,
        child: GoogleMap(
          initialCameraPosition: controller.kGooglePlex,
          mapType: MapType.normal,
          buildingsEnabled: false,
          myLocationButtonEnabled: false,
        ),
      ),
    );
  }
}
