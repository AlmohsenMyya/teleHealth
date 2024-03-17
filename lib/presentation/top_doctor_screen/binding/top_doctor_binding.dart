import 'package:almohsen_s_telehealth/presentation/top_doctor_screen/controller/top_doctor_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TopDoctorScreen.
///
/// This class ensures that the TopDoctorController is created when the
/// TopDoctorScreen is first loaded.
class TopDoctorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopDoctorController());
  }
}
