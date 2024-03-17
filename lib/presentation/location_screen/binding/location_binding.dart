import 'package:almohsen_s_telehealth/presentation/location_screen/controller/location_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LocationScreen.
///
/// This class ensures that the LocationController is created when the
/// LocationScreen is first loaded.
class LocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocationController());
  }
}
