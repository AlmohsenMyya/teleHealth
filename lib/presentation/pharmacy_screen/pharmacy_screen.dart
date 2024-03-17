import 'package:almohsen_s_telehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_telehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_s_telehealth/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:almohsen_s_telehealth/widgets/app_bar/appbar_trailing_image.dart';
import 'package:almohsen_s_telehealth/widgets/custom_search_view.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';
import 'widgets/popularproductlist_item_widget.dart';
import 'models/popularproductlist_item_model.dart';
import 'widgets/productonsalelist_item_widget.dart';
import 'models/productonsalelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_telehealth/core/app_export.dart';
import 'controller/pharmacy_controller.dart';

// ignore_for_file: must_be_immutable
class PharmacyScreen extends GetWidget<PharmacyController> {
  PharmacyScreen({Key? key}) : super(key: key);

  Completer<WebViewController> webViewController =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 21.v),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: CustomSearchView(
                          controller: controller.searchController,
                          hintText: "msg_search_drugs_category".tr)),
                  SizedBox(height: 24.v),
                  _buildCta(),
                  SizedBox(height: 27.v),
                  Padding(
                      padding: EdgeInsets.only(left: 21.h, right: 24.h),
                      child: _buildHeaderRow(
                          productOnSaleText: "lbl_popular_product".tr,
                          seeAllText: "lbl_see_all".tr)),
                  SizedBox(height: 10.v),
                  _buildPopularProductList(),
                  SizedBox(height: 26.v),
                  Padding(
                      padding: EdgeInsets.only(left: 21.h, right: 24.h),
                      child: _buildHeaderRow(
                          productOnSaleText: "lbl_product_on_sale".tr,
                          seeAllText: "lbl_see_all".tr)),
                  SizedBox(height: 12.v),
                  _buildProductOnSaleList()
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 42.v,
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 32.h, top: 8.v, bottom: 10.v)),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_pharmacy".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCart,
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 9.v))
        ]);
  }

  /// Section Widget
  Widget _buildCta() {
    return SizedBox(
        height: 135.v,
        width: 335.h,
        child: WebView(
            initialUrl: 'https://flutter.dev',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController controller) {
              webViewController.complete(controller);
            },
            onProgress: (int progress) {
              print("WebView is loading (progress : $progress%)");
            },
            onPageStarted: (String url) {
              print("Page started loading: $url");
            },
            onPageFinished: (String url) {
              print("Page finished loading: $url");
            }));
  }

  /// Section Widget
  Widget _buildPopularProductList() {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 165.v,
            child: Obx(() => ListView.separated(
                padding: EdgeInsets.only(left: 21.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 21.h);
                },
                itemCount: controller.pharmacyModelObj.value
                    .popularproductlistItemList.value.length,
                itemBuilder: (context, index) {
                  PopularproductlistItemModel model = controller
                      .pharmacyModelObj
                      .value
                      .popularproductlistItemList
                      .value[index];
                  return PopularproductlistItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildProductOnSaleList() {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 165.v,
            child: Obx(() => ListView.separated(
                padding: EdgeInsets.only(left: 21.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 17.h);
                },
                itemCount: controller.pharmacyModelObj.value
                    .productonsalelistItemList.value.length,
                itemBuilder: (context, index) {
                  ProductonsalelistItemModel model = controller.pharmacyModelObj
                      .value.productonsalelistItemList.value[index];
                  return ProductonsalelistItemWidget(model);
                }))));
  }

  /// Common widget
  Widget _buildHeaderRow({
    required String productOnSaleText,
    required String seeAllText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(productOnSaleText,
          style: theme.textTheme.titleMedium!
              .copyWith(color: theme.colorScheme.onPrimary)),
      Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Text(seeAllText,
              style: CustomTextStyles.labelLargePrimary_1
                  .copyWith(color: theme.colorScheme.primary)))
    ]);
  }
}
