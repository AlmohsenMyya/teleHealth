import 'package:almohsen_s_telehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_telehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_s_telehealth/presentation/reset_password_email_page/reset_password_email_page.dart';
import 'package:almohsen_s_telehealth/presentation/reset_password_phone_page/reset_password_phone_page.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_telehealth/core/app_export.dart';
import 'controller/reset_password_email_tab_container_controller.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordEmailTabContainerScreen
    extends GetWidget<ResetPasswordEmailTabContainerController> {
  const ResetPasswordEmailTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 45.v),
              _buildForgotPasswordTitle(),
              SizedBox(height: 21.v),
              _buildTabview(),
              SizedBox(
                height: 525.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    ResetPasswordEmailPage(),
                    ResetPasswordPhonePage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconChevronLeftOnprimary,
        margin: EdgeInsets.fromLTRB(32.h, 8.v, 319.h, 8.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildForgotPasswordTitle() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_forgot_your_password".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 8.v),
          Container(
            width: 319.h,
            margin: EdgeInsets.only(right: 8.h),
            child: Text(
              "msg_enter_your_email2".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleMediumGray500.copyWith(
                height: 1.50,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 51.v,
      width: 327.h,
      decoration: BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(
          12.h,
        ),
      ),
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.blueGray400,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),
        indicatorPadding: EdgeInsets.all(
          4.0.h,
        ),
        indicator: BoxDecoration(
          color: appTheme.whiteA700,
          borderRadius: BorderRadius.circular(
            8.h,
          ),
          boxShadow: [
            BoxShadow(
              color: appTheme.black900.withOpacity(0.05),
              spreadRadius: 2.h,
              blurRadius: 2.h,
              offset: Offset(
                0,
                0,
              ),
            ),
          ],
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_email".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_phone".tr,
            ),
          ),
        ],
      ),
    );
  }
}
