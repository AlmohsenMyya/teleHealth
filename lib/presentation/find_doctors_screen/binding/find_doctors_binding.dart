import 'package:almohsen_s_telehealth/presentation/find_doctors_screen/controller/find_doctors_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FindDoctorsScreen.
///
/// This class ensures that the FindDoctorsController is created when the
/// FindDoctorsScreen is first loaded.
class FindDoctorsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FindDoctorsController());
  }
}
