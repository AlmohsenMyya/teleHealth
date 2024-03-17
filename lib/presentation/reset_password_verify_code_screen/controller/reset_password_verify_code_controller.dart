import '../../../core/app_export.dart';
import '../models/reset_password_verify_code_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the ResetPasswordVerifyCodeScreen.
///
/// This class manages the state of the ResetPasswordVerifyCodeScreen, including the
/// current resetPasswordVerifyCodeModelObj
class ResetPasswordVerifyCodeController extends GetxController
    with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<ResetPasswordVerifyCodeModel> resetPasswordVerifyCodeModelObj =
      ResetPasswordVerifyCodeModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
