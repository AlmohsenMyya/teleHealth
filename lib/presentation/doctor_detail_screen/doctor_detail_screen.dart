import 'package:almohsen_s_telehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_telehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_s_telehealth/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:almohsen_s_telehealth/widgets/app_bar/appbar_trailing_image.dart';
import 'package:readmore/readmore.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'models/am_item_model.dart';
import '../doctor_detail_screen/widgets/am_item_widget.dart';
import 'package:almohsen_s_telehealth/widgets/custom_icon_button.dart';
import 'package:almohsen_s_telehealth/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_telehealth/core/app_export.dart';
import 'controller/doctor_detail_controller.dart';

class DoctorDetailScreen extends GetWidget<DoctorDetailController> {
  const DoctorDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 31.v),
                child: Column(children: [
                  _buildDoctorInformation(),
                  SizedBox(height: 30.v),
                  _buildDateTime(),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildSeventyOne()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 32.h, top: 8.v, bottom: 8.v)),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_details".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconChevronLeftOnprimary24x24,
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.v))
        ]);
  }

  /// Section Widget
  Widget _buildDoctorInformation() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
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
          ])),
      SizedBox(height: 17.v),
      Text("lbl_about".tr, style: theme.textTheme.titleMedium),
      SizedBox(height: 8.v),
      SizedBox(
          width: 305.h,
          child: ReadMoreText("msg_lorem_ipsum_dolor".tr,
              trimLines: 3,
              colorClickableText: theme.colorScheme.primary,
              trimMode: TrimMode.Line,
              trimCollapsedText: "lbl_read_more".tr,
              moreStyle:
                  CustomTextStyles.bodySmallGray600.copyWith(height: 1.50),
              lessStyle:
                  CustomTextStyles.bodySmallGray600.copyWith(height: 1.50)))
    ]);
  }

  /// Section Widget
  Widget _buildDateTime() {
    return Column(children: [
      Obx(() => SizedBox(
          height: 64.v,
          width: 327.h,
          child: EasyDateTimeLine(
              initialDate: controller.selectedDatesFromCalendar1.value,
              locale: 'en_US',
              headerProps: EasyHeaderProps(
                  selectedDateFormat: SelectedDateFormat.fullDateDMY,
                  monthPickerType: MonthPickerType.switcher,
                  showHeader: false),
              dayProps: EasyDayProps(width: 46.h, height: 64.v),
              onDateChange: (selectedDate) {
                controller.selectedDatesFromCalendar1.value = selectedDate;
              },
              itemBuilder: (context, dayNumber, dayName, monthName, fullDate,
                  isSelected) {
                return isSelected
                    ? Container(
                        width: 46.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 11.h, vertical: 8.v),
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(15.h)),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 6.v),
                                  child: Text(dayName.toString(),
                                      style: CustomTextStyles
                                          .labelMediumWhiteA700
                                          .copyWith(
                                              color: appTheme.whiteA700))),
                              Padding(
                                  padding: EdgeInsets.only(top: 5.v),
                                  child: Text(dayNumber.toString(),
                                      style: CustomTextStyles
                                          .titleMediumWhiteA70018
                                          .copyWith(color: appTheme.whiteA700)))
                            ]))
                    : Container(
                        width: 46.h,
                        padding: EdgeInsets.all(10.h),
                        decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                            borderRadius: BorderRadius.circular(15.h),
                            border: Border.all(
                                color: appTheme.gray300, width: 1.h)),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 3.h, top: 4.v),
                                  child: Text(dayName.toString(),
                                      style: theme.textTheme.labelMedium!
                                          .copyWith(color: appTheme.gray500))),
                              Padding(
                                  padding: EdgeInsets.only(top: 3.v),
                                  child: Text(dayNumber.toString(),
                                      style: CustomTextStyles.titleMedium18
                                          .copyWith(
                                              color:
                                                  theme.colorScheme.onPrimary)))
                            ]));
              }))),
      SizedBox(height: 32.v),
      Divider(),
      SizedBox(height: 32.v),
      Obx(() => Wrap(
          runSpacing: 9.v,
          spacing: 9.h,
          children: List<Widget>.generate(
              controller.doctorDetailModelObj.value.amItemList.value.length,
              (index) {
            AmItemModel model =
                controller.doctorDetailModelObj.value.amItemList.value[index];
            return AmItemWidget(model);
          })))
    ]);
  }

  /// Section Widget
  Widget _buildSeventyOne() {
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 28.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillOnErrorContainer,
              child: CustomImageView(imagePath: ImageConstant.imgSettings)),
          Expanded(
              child: CustomElevatedButton(
                  height: 50.v,
                  text: "lbl_book_apointment".tr,
                  margin: EdgeInsets.only(left: 16.h),
                  buttonTextStyle: CustomTextStyles.titleSmallWhiteA700SemiBold,
                  onPressed: () {
                    onTapBookApointment();
                  }))
        ]));
  }

  /// Navigates to the bookingDoctorScreen when the action is triggered.
  onTapBookApointment() {
    Get.toNamed(
      AppRoutes.bookingDoctorScreen,
    );
  }
}
