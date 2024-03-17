import 'package:almohsen_s_telehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_telehealth/widgets/app_bar/appbar_title.dart';
import 'package:almohsen_s_telehealth/presentation/message_history_page/message_history_page.dart';
import 'package:almohsen_s_telehealth/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_telehealth/core/app_export.dart';
import 'controller/message_history_tab_container_controller.dart';
import 'models/message_history_tab_container_model.dart';

class MessageHistoryTabContainerPage extends StatelessWidget {
  MessageHistoryTabContainerPage({Key? key})
      : super(
          key: key,
        );

  MessageHistoryTabContainerController controller = Get.put(
      MessageHistoryTabContainerController(
          MessageHistoryTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 15.v),
          child: Column(
            children: [
              _buildTabview(),
              SizedBox(
                height: 579.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    MessageHistoryPage(),
                    MessageHistoryPage(),
                    MessageHistoryPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 49.v,
      title: AppbarTitle(
        text: "lbl_message".tr,
        margin: EdgeInsets.only(left: 21.h),
      ),
      actions: [
        Container(
          height: 33.v,
          width: 24.h,
          margin: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 8.v,
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRewindOnprimary,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(bottom: 9.v),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgComponent1,
                height: 16.v,
                width: 4.h,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  left: 20.h,
                  top: 17.v,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 46.v,
      width: 335.h,
      decoration: BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(
          8.h,
        ),
      ),
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: theme.colorScheme.onPrimary,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            8.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_all".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_group".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_private".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
      height: 55,
      width: 55,
      backgroundColor: theme.colorScheme.primary,
      child: CustomImageView(
        imagePath: ImageConstant.imgUserWhiteA700,
        height: 27.5.v,
        width: 27.5.h,
      ),
    );
  }
}
