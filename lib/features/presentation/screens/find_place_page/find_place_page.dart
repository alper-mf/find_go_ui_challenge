import 'package:find_go_app/features/common/constants/size_constants.dart';
import 'package:find_go_app/features/presentation/screens/find_place_page/view_model/find_place_model.dart';
import 'package:find_go_app/features/presentation/screens/find_place_page/view_widgets/slide_up_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FindPlacePage extends GetView<FindPlaceModel> {
  const FindPlacePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Sizes.kWidth,
        height: Sizes.kHeight,
        child: Stack(
          children: [
            SizedBox(
              height: Sizes.kHeight,
              width: Sizes.kWidth,
              child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: const CameraPosition(
                    target: LatLng(40.997604, 29.150877), zoom: 12.0),
                onMapCreated: (GoogleMapController controller) {},
              ),
            ),
            const SlideUpWidget()
          ],
        ),
      ),
    );
  }
}
