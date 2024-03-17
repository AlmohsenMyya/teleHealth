import 'package:almohsen_s_telehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_telehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_s_telehealth/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:almohsen_s_telehealth/widgets/custom_icon_button.dart';
import 'package:almohsen_s_telehealth/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_telehealth/core/app_export.dart';
import 'controller/booking_doctor_controller.dart';

class BookingDoctorScreen extends GetWidget<BookingDoctorController> {
  const BookingDoctorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 28.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDoctorInformation(),
                      SizedBox(height: 38.v),
                      _buildAdminFee(
                          adminFeeText: "lbl_date".tr,
                          priceText: "lbl_change".tr),
                      SizedBox(height: 7.v),
                      Padding(
                          padding: EdgeInsets.only(right: 41.h),
                          child: Row(children: [
                            CustomIconButton(
                                height: 36.adaptSize,
                                width: 36.adaptSize,
                                padding: EdgeInsets.all(8.h),
                                decoration: IconButtonStyleHelper
                                    .fillOnErrorContainerTL18,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgCalendar)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 15.h, top: 12.v, bottom: 6.v),
                                child: Text("msg_wednesday_jun_23".tr,
                                    style:
                                        CustomTextStyles.titleSmallBluegray700))
                          ])),
                      SizedBox(height: 15.v),
                      Divider(),
                      SizedBox(height: 17.v),
                      _buildReason(),
                      SizedBox(height: 15.v),
                      Divider(),
                      SizedBox(height: 19.v),
                      Text("lbl_payment_detail".tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 11.v),
                      _buildTotal(
                          totalText: "lbl_consultation".tr,
                          priceText: "lbl_60_00".tr),
                      SizedBox(height: 11.v),
                      _buildAdminFee(
                          adminFeeText: "lbl_admin_fee".tr,
                          priceText: "lbl_01_00".tr),
                      SizedBox(height: 11.v),
                      _buildAdminFee(
                          adminFeeText: "msg_aditional_discount".tr,
                          priceText: "lbl".tr),
                      SizedBox(height: 12.v),
                      _buildTotal(
                          totalText: "lbl_total".tr, priceText: "lbl_61_00".tr),
                      SizedBox(height: 13.v),
                      Divider(endIndent: 8.h),
                      SizedBox(height: 20.v),
                      Text("lbl_payment_method".tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 10.v),
                      _buildCard(
                          visaText: "lbl_visa".tr, changeText: "lbl_change".tr)
                    ])),
            bottomNavigationBar: _buildCheckout()));
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
        title: AppbarSubtitleOne(text: "lbl_appointment".tr));
  }

  /// Section Widget
  Widget _buildDoctorInformation() {
    return Padding(
        padding: EdgeInsets.only(right: 41.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle959,
              height: 111.adaptSize,
              width: 111.adaptSize,
              radius: BorderRadius.circular(8.h)),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 7.v, bottom: 5.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("msg_dr_marcus_horizon".tr,
                        style: CustomTextStyles.titleMedium18),
                    SizedBox(height: 8.v),
                    Text("lbl_chardiologist".tr,
                        style: theme.textTheme.labelLarge),
                    SizedBox(height: 8.v),
                    Row(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgSignal,
                          height: 16.adaptSize,
                          width: 16.adaptSize),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_4_7".tr,
                              style: CustomTextStyles.labelLargeAmber500))
                    ]),
                    SizedBox(height: 11.v),
                    Row(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgLinkedin,
                          height: 13.adaptSize,
                          width: 13.adaptSize,
                          margin: EdgeInsets.only(bottom: 2.v)),
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("lbl_800m_away".tr,
                              style: theme.textTheme.labelLarge))
                    ])
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildReason() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      _buildCard(visaText: "lbl_reason".tr, changeText: "lbl_change".tr),
      SizedBox(height: 7.v),
      Row(children: [
        CustomIconButton(
            height: 36.adaptSize,
            width: 36.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillOnErrorContainerTL18,
            child: CustomImageView(imagePath: ImageConstant.imgUserPrimary)),
        Padding(
            padding: EdgeInsets.only(left: 15.h, top: 12.v, bottom: 6.v),
            child: Text("lbl_chest_pain".tr,
                style: CustomTextStyles.titleSmallOnPrimary))
      ])
    ]);
  }

  /// Section Widget
  Widget _buildCheckout() {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 24.h, bottom: 26.v),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 5.v, bottom: 2.v),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_total".tr, style: theme.textTheme.titleSmall),
                    Padding(
                        padding: EdgeInsets.only(top: 3.v),
                        child: Text("lbl_61_002".tr,
                            style: CustomTextStyles.titleMedium18))
                  ])),
          CustomElevatedButton(
              height: 50.v,
              width: 192.h,
              text: "lbl_checkout".tr,
              buttonTextStyle: CustomTextStyles.titleSmallWhiteA700SemiBold,
              onPressed: () {
                onTapCheckout();
              })
        ]));
  }

  /// Common widget
  Widget _buildAdminFee({
    required String adminFeeText,
    required String priceText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(adminFeeText,
          style: CustomTextStyles.bodyMediumGray500
              .copyWith(color: appTheme.gray500)),
      Text(priceText,
          style: CustomTextStyles.bodyMediumOnPrimary
              .copyWith(color: theme.colorScheme.onPrimary))
    ]);
  }

  /// Common widget
  Widget _buildTotal({
    required String totalText,
    required String priceText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(totalText,
          style: CustomTextStyles.titleSmallOnPrimary
              .copyWith(color: theme.colorScheme.onPrimary)),
      Text(priceText,
          style: CustomTextStyles.titleSmallPrimarySemiBold
              .copyWith(color: theme.colorScheme.primary))
    ]);
  }

  /// Common widget
  Widget _buildCard({
    required String visaText,
    required String changeText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v),
        decoration: AppDecoration.outlineGray300
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder11),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(visaText,
                      style: CustomTextStyles.titleMediumInterPrimaryContainer
                          .copyWith(
                              color: theme.colorScheme.primaryContainer))),
              Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Text(changeText,
                      style: CustomTextStyles.labelLargePrimary_1
                          .copyWith(color: theme.colorScheme.primary)))
            ]));
  }

  /// Navigates to the chatWithDoctorScreen when the action is triggered.
  onTapCheckout() {
    Get.toNamed(
      AppRoutes.chatWithDoctorScreen,
    );
  }
}
