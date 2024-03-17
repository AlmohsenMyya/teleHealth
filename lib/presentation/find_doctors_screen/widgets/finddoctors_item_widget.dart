import '../models/finddoctors_item_model.dart';
import '../controller/find_doctors_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_telehealth/core/app_export.dart';

// ignore: must_be_immutable
class FinddoctorsItemWidget extends StatelessWidget {
  FinddoctorsItemWidget(
    this.finddoctorsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FinddoctorsItemModel finddoctorsItemModelObj;

  var controller = Get.find<FindDoctorsController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56.v,
          width: 64.h,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 12.v,
          ),
          decoration: AppDecoration.outlineBlack.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Obx(
            () => CustomImageView(
              imagePath: finddoctorsItemModelObj.general!.value,
              height: 32.adaptSize,
              width: 32.adaptSize,
              alignment: Alignment.center,
            ),
          ),
        ),
        SizedBox(height: 9.v),
        Obx(
          () => Text(
            finddoctorsItemModelObj.general1!.value,
            style: CustomTextStyles.bodyMediumBluegray400,
          ),
        ),
      ],
    );
  }
}
