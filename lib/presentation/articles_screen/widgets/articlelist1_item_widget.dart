import '../models/articlelist1_item_model.dart';
import '../controller/articles_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_telehealth/core/app_export.dart';

// ignore: must_be_immutable
class Articlelist1ItemWidget extends StatelessWidget {
  Articlelist1ItemWidget(
    this.articlelist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Articlelist1ItemModel articlelist1ItemModelObj;

  var controller = Get.find<ArticlesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.h),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: articlelist1ItemModelObj.image!.value,
              height: 59.adaptSize,
              width: 59.adaptSize,
              radius: BorderRadius.circular(
                8.h,
              ),
              margin: EdgeInsets.only(bottom: 1.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 7.v,
              bottom: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 206.h,
                  child: Obx(
                    () => Text(
                      articlelist1ItemModelObj.theHealthiest!.value,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelLargeOnPrimary.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 1.v),
                Row(
                  children: [
                    Obx(
                      () => Text(
                        articlelist1ItemModelObj.jun!.value,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                    Container(
                      height: 2.adaptSize,
                      width: 2.adaptSize,
                      margin: EdgeInsets.only(
                        left: 2.h,
                        top: 3.v,
                        bottom: 7.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.gray500,
                        borderRadius: BorderRadius.circular(
                          1.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Obx(
                        () => Text(
                          articlelist1ItemModelObj.time!.value,
                          style: CustomTextStyles.labelMediumPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Obx(
            () => CustomImageView(
              imagePath: articlelist1ItemModelObj.image1!.value,
              height: 12.v,
              width: 10.h,
              margin: EdgeInsets.only(
                left: 27.h,
                top: 8.v,
                bottom: 39.v,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
