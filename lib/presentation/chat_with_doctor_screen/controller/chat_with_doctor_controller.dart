import '../../../core/app_export.dart';
import '../models/chat_with_doctor_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChatWithDoctorScreen.
///
/// This class manages the state of the ChatWithDoctorScreen, including the
/// current chatWithDoctorModelObj
class ChatWithDoctorController extends GetxController {
  TextEditingController messageController = TextEditingController();

  Rx<ChatWithDoctorModel> chatWithDoctorModelObj = ChatWithDoctorModel().obs;

  @override
  void onClose() {
    super.onClose();
    messageController.dispose();
  }
}
