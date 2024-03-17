import 'package:almohsen_s_telehealth/presentation/create_new_password_screen/controller/create_new_password_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateNewPasswordScreen.
///
/// This class ensures that the CreateNewPasswordController is created when the
/// CreateNewPasswordScreen is first loaded.
class CreateNewPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateNewPasswordController());
  }
}
