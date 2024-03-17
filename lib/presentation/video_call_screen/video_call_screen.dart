import 'package:almohsen_s_telehealth/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_telehealth/core/app_export.dart';
import 'controller/video_call_controller.dart';

// ignore_for_file: must_be_immutable
class VideoCallScreen extends GetWidget<VideoCallController> {
  const VideoCallScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          padding: EdgeInsets.only(bottom: 40.v),
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup192,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: 270.h,
            margin: EdgeInsets.only(left: 65.h),
            decoration: AppDecoration.gradientBlackToBlack,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage,
                  height: 112.v,
                  width: 75.h,
                  radius: BorderRadius.circular(
                    15.h,
                  ),
                  alignment: Alignment.centerRight,
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(left: 33.h),
                  child: Text(
                    "msg_dr_marcus_horizon".tr,
                    style: CustomTextStyles.titleMediumWhiteA700,
                  ),
                ),
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.only(left: 73.h),
                  child: Text(
                    "lbl_00_05_24".tr,
                    style: CustomTextStyles.titleSmallWhiteA700,
                  ),
                ),
                SizedBox(height: 21.v),
                _buildCallActions(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildSwipeBackToMenu(),
      ),
    );
  }

  /// Section Widget
  Widget _buildCallActions() {
    return Padding(
      padding: EdgeInsets.only(right: 64.h),
      child: Row(
        children: [
          CustomIconButton(
            height: 52.adaptSize,
            width: 52.adaptSize,
            padding: EdgeInsets.all(14.h),
            decoration: IconButtonStyleHelper.fillRed,
            child: CustomImageView(
              imagePath: ImageConstant.imgUpload,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.h),
            child: CustomIconButton(
              height: 52.adaptSize,
              width: 52.adaptSize,
              padding: EdgeInsets.all(14.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgCall,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.h),
            child: CustomIconButton(
              height: 52.adaptSize,
              width: 52.adaptSize,
              padding: EdgeInsets.all(14.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgMenu,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSwipeBackToMenu() {
    return Container(
      margin: EdgeInsets.only(
        left: 65.h,
        right: 20.h,
        bottom: 21.v,
      ),
      padding: EdgeInsets.symmetric(horizontal: 35.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowUp,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(left: 58.h),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "msg_swipe_back_to_menu".tr,
              style: CustomTextStyles.titleSmallWhiteA700,
            ),
          ),
        ],
      ),
    );
  }
}
