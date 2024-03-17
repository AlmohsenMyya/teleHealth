import 'package:almohsen_s_telehealth/presentation/onboarding_three_screen/controller/onboarding_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardingThreeScreen.
///
/// This class ensures that the OnboardingThreeController is created when the
/// OnboardingThreeScreen is first loaded.
class OnboardingThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingThreeController());
  }
}
