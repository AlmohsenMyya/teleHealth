import '../../../core/app_export.dart';
import '../models/onboarding_one_model.dart';

/// A controller class for the OnboardingOneScreen.
///
/// This class manages the state of the OnboardingOneScreen, including the
/// current onboardingOneModelObj
class OnboardingOneController extends GetxController {
  Rx<OnboardingOneModel> onboardingOneModelObj = OnboardingOneModel().obs;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}
