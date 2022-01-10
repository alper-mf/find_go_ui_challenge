import 'package:find_go_app/features/common/constants/size_constants.dart';
import 'package:find_go_app/features/presentation/screens/home_page/home_widgets/appbar_area_widget.dart';
import 'package:find_go_app/features/presentation/screens/home_page/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SlidingPanelWidget extends GetView<HomeViewModel> {
  const SlidingPanelWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      controller: controller.appBarController,
      maxHeight: Sizes.appbarMaxHeight,
      minHeight: Sizes.appbarMinHeight,
      defaultPanelState: PanelState.OPEN,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(Sizes.appbarRadius / 2),
        bottomRight: Radius.circular(Sizes.appbarRadius / 2),
      ),
      color: Colors.transparent,
      backdropColor: Colors.transparent,
      slideDirection: SlideDirection.DOWN,
      boxShadow: const [],
      panel: const AppBarArea(),
      body: SizedBox(
        height: Sizes.kHeight,
        width: Sizes.kWidth,
        child: GoogleMap(
          initialCameraPosition: controller.kGooglePlex,
          mapType: MapType.normal,
        ),
      ),
    );
  }
}
