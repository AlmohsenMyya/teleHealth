import 'package:almohsen_s_telehealth/presentation/pharmacy_screen/controller/pharmacy_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PharmacyScreen.
///
/// This class ensures that the PharmacyController is created when the
/// PharmacyScreen is first loaded.
class PharmacyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PharmacyController());
  }
}
