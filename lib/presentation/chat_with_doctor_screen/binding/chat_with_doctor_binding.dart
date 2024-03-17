import 'package:almohsen_s_telehealth/presentation/chat_with_doctor_screen/controller/chat_with_doctor_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatWithDoctorScreen.
///
/// This class ensures that the ChatWithDoctorController is created when the
/// ChatWithDoctorScreen is first loaded.
class ChatWithDoctorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatWithDoctorController());
  }
}
