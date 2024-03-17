import 'widgets/messagehistory_item_widget.dart';
import 'models/messagehistory_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_telehealth/core/app_export.dart';
import 'controller/message_history_controller.dart';
import 'models/message_history_model.dart';

class MessageHistoryPage extends StatelessWidget {
  MessageHistoryPage({Key? key})
      : super(
          key: key,
        );

  MessageHistoryController controller =
      Get.put(MessageHistoryController(MessageHistoryModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 32.v),
              _buildMessageHistory(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMessageHistory() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Obx(
          () => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 16.v,
              );
            },
            itemCount: controller.messageHistoryModelObj.value
                .messagehistoryItemList.value.length,
            itemBuilder: (context, index) {
              MessagehistoryItemModel model = controller.messageHistoryModelObj
                  .value.messagehistoryItemList.value[index];
              return MessagehistoryItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
