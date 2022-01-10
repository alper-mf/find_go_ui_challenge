import 'package:find_go_app/features/common/constants/size_constants.dart';
import 'package:find_go_app/features/presentation/components/utility/palette.dart';
import 'package:find_go_app/features/presentation/screens/home_page/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'home_widgets/bottom_appbar_widget.dart';
import 'home_widgets/sliding_down_widget.dart';

class HomePage extends GetView<HomeViewModel> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.globalKey,
      appBar: AppBar(
        backgroundColor: Palette.scaffold,
        elevation: 0,
      ),
      body: SizedBox(
        width: Sizes.kWidth,
        height: Sizes.kHeight,
        child: Stack(
          children: [
            SizedBox(
              height: Sizes.kHeight,
              width: Sizes.kWidth,
              child: GoogleMap(
                initialCameraPosition: controller.kGooglePlex,
                mapType: MapType.normal,
              ),
            ),
            const SlidingPanelWidget(),
            const BottomAppBarWidget(),
          ],
        ),
      ),
    );
  }
}
