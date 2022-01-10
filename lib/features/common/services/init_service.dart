import 'package:find_go_app/features/presentation/screens/find_place_page/view_model/find_place_model.dart';
import 'package:find_go_app/features/presentation/screens/home_page/view_model/home_view_model.dart';
import 'package:get/get.dart';

class InitializeServices extends Bindings {
  // ignore: missing_return
  @override
  Future<void> dependencies() async {
    Get.lazyPut(() => HomeViewModel());
    Get.lazyPut(() => FindPlaceModel());
  }
}
