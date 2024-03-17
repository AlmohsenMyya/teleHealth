import '../models/am_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_telehealth/core/app_export.dart';

// ignore: must_be_immutable
class AmItemWidget extends StatelessWidget {
  AmItemWidget(
    this.amItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AmItemModel amItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 25.h,
          vertical: 11.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          amItemModelObj.am!.value,
          style: TextStyle(
            color: (amItemModelObj.isSelected?.value ?? false)
                ? appTheme.whiteA700
                : appTheme.gray500,
            fontSize: 12.fSize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: (amItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.whiteA700,
        selectedColor: theme.colorScheme.primary,
        shape: (amItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  15.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray300,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  15.h,
                ),
              ),
        onSelected: (value) {
          amItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
