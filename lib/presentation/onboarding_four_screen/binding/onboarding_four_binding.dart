import 'package:almohsen_s_telehealth/presentation/onboarding_four_screen/controller/onboarding_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardingFourScreen.
///
/// This class ensures that the OnboardingFourController is created when the
/// OnboardingFourScreen is first loaded.
class OnboardingFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingFourController());
  }
}
