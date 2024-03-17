import '../../../core/app_export.dart';
import '../models/reset_password_email_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ResetPasswordEmailPage.
///
/// This class manages the state of the ResetPasswordEmailPage, including the
/// current resetPasswordEmailModelObj
class ResetPasswordEmailController extends GetxController {
  ResetPasswordEmailController(this.resetPasswordEmailModelObj);

  TextEditingController emailController = TextEditingController();

  Rx<ResetPasswordEmailModel> resetPasswordEmailModelObj;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
