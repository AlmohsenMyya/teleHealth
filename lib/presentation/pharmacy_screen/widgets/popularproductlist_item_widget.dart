import '../models/popularproductlist_item_model.dart';
import '../controller/pharmacy_controller.dart';
import 'package:almohsen_s_telehealth/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_telehealth/core/app_export.dart';

// ignore: must_be_immutable
class PopularproductlistItemWidget extends StatelessWidget {
  PopularproductlistItemWidget(
    this.popularproductlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PopularproductlistItemModel popularproductlistItemModelObj;

  var controller = Get.find<PharmacyController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 118.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 9.v,
          ),
          decoration: AppDecoration.outlineGray300.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder11,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 11.v),
              Obx(
                () => CustomImageView(
                  imagePath: popularproductlistItemModelObj.panadol!.value,
                  height: 58.v,
                  width: 56.h,
                  radius: BorderRadius.circular(
                    29.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Obx(
                  () => Text(
                    popularproductlistItemModelObj.panadol1!.value,
                    style: CustomTextStyles.titleSmallOnPrimary,
                  ),
                ),
              ),
              SizedBox(height: 8.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Obx(
                  () => Text(
                    popularproductlistItemModelObj.pcs!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Row(
                  children: [
                    Obx(
                      () => Text(
                        popularproductlistItemModelObj.price!.value,
                        style: CustomTextStyles.titleSmallBlack900,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 42.h),
                      child: Obx(
                        () => CustomIconButton(
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                          padding: EdgeInsets.all(5.h),
                          child: CustomImageView(
                            imagePath:
                                popularproductlistItemModelObj.close!.value,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
