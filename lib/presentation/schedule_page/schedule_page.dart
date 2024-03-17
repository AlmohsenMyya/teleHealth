import 'widgets/schedule_item_widget.dart';
import 'models/schedule_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_telehealth/core/app_export.dart';
import 'controller/schedule_controller.dart';
import 'models/schedule_model.dart';

class SchedulePage extends StatelessWidget {
  SchedulePage({Key? key})
      : super(
          key: key,
        );

  ScheduleController controller =
      Get.put(ScheduleController(ScheduleModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Column(
            children: [
              SizedBox(height: 32.v),
              _buildSchedule(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSchedule() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount:
              controller.scheduleModelObj.value.scheduleItemList.value.length,
          itemBuilder: (context, index) {
            ScheduleItemModel model =
                controller.scheduleModelObj.value.scheduleItemList.value[index];
            return ScheduleItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
