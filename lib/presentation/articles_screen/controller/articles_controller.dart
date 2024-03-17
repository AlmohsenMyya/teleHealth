import '../../../core/app_export.dart';
import '../models/articles_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ArticlesScreen.
///
/// This class manages the state of the ArticlesScreen, including the
/// current articlesModelObj
class ArticlesController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ArticlesModel> articlesModelObj = ArticlesModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
