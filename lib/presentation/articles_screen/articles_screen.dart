import 'package:almohsen_s_telehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_telehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_s_telehealth/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:almohsen_s_telehealth/widgets/app_bar/appbar_trailing_image.dart';
import 'package:almohsen_s_telehealth/widgets/custom_search_view.dart';
import 'models/chipview_item_model.dart';
import '../articles_screen/widgets/chipview_item_widget.dart';
import 'widgets/articlelist_item_widget.dart';
import 'models/articlelist_item_model.dart';
import 'widgets/articlelist1_item_widget.dart';
import 'models/articlelist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_telehealth/core/app_export.dart';
import 'controller/articles_controller.dart';

class ArticlesScreen extends GetWidget<ArticlesController> {
  const ArticlesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 23.v),
                    child: Column(children: [
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.h),
                          child: CustomSearchView(
                              controller: controller.searchController,
                              hintText: "msg_search_articles".tr)),
                      SizedBox(height: 28.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 24.h),
                              child: Text("msg_popular_articles".tr,
                                  style: theme.textTheme.titleMedium))),
                      SizedBox(height: 10.v),
                      _buildChipView(),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.h),
                          child: _buildRelatedArticlesRow(
                              relatedArticlesText: "msg_trending_articles".tr,
                              seeAllText: "lbl_see_all".tr)),
                      SizedBox(height: 10.v),
                      _buildArticleList(),
                      SizedBox(height: 26.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.h),
                          child: _buildRelatedArticlesRow(
                              relatedArticlesText: "msg_related_articles".tr,
                              seeAllText: "lbl_see_all".tr)),
                      SizedBox(height: 12.v),
                      _buildArticleList1()
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 32.h, top: 8.v, bottom: 8.v)),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_articles".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconChevronLeftOnprimary24x24,
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.v))
        ]);
  }

  /// Section Widget
  Widget _buildChipView() {
    return Obx(() => Wrap(
        runSpacing: 5.v,
        spacing: 5.h,
        children: List<Widget>.generate(
            controller.articlesModelObj.value.chipviewItemList.value.length,
            (index) {
          ChipviewItemModel model =
              controller.articlesModelObj.value.chipviewItemList.value[index];
          return ChipviewItemWidget(model);
        })));
  }

  /// Section Widget
  Widget _buildArticleList() {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 219.v,
            child: Obx(() => ListView.separated(
                padding: EdgeInsets.only(left: 24.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 15.h);
                },
                itemCount: controller
                    .articlesModelObj.value.articlelistItemList.value.length,
                itemBuilder: (context, index) {
                  ArticlelistItemModel model = controller
                      .articlesModelObj.value.articlelistItemList.value[index];
                  return ArticlelistItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildArticleList1() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 10.v);
            },
            itemCount: controller
                .articlesModelObj.value.articlelist1ItemList.value.length,
            itemBuilder: (context, index) {
              Articlelist1ItemModel model = controller
                  .articlesModelObj.value.articlelist1ItemList.value[index];
              return Articlelist1ItemWidget(model);
            })));
  }

  /// Common widget
  Widget _buildRelatedArticlesRow({
    required String relatedArticlesText,
    required String seeAllText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(relatedArticlesText,
          style: CustomTextStyles.titleMediumBlack900
              .copyWith(color: appTheme.black900)),
      Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Text(seeAllText,
              style: CustomTextStyles.labelLargePrimary_1
                  .copyWith(color: theme.colorScheme.primary)))
    ]);
  }
}
