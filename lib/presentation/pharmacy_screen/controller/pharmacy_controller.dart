import '../../../core/app_export.dart';
import '../models/pharmacy_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PharmacyScreen.
///
/// This class manages the state of the PharmacyScreen, including the
/// current pharmacyModelObj
class PharmacyController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<PharmacyModel> pharmacyModelObj = PharmacyModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
