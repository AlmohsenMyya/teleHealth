import 'package:almohsen_s_telehealth/presentation/reset_password_email_tab_container_screen/controller/reset_password_email_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ResetPasswordEmailTabContainerScreen.
///
/// This class ensures that the ResetPasswordEmailTabContainerController is created when the
/// ResetPasswordEmailTabContainerScreen is first loaded.
class ResetPasswordEmailTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetPasswordEmailTabContainerController());
  }
}
