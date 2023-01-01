import '../explore_page/widgets/explore1_item_widget.dart';
import '../explore_page/widgets/explore_item_widget.dart';
import 'controller/explore_controller.dart';
import 'models/explore1_item_model.dart';
import 'models/explore_item_model.dart';
import 'models/explore_model.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:lincoln_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ExplorePage extends StatelessWidget {
  ExploreController controller = Get.put(ExploreController(ExploreModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                title: AppbarSearchview(
                    hintText: "lbl_search_product".tr,
                    controller: controller.searchController,
                    margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgDownload,
                      margin: getMargin(left: 2, top: 16, bottom: 16)),
                  Container(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      margin: getMargin(all: 16),
                      child: Stack(alignment: Alignment.topRight, children: [
                        AppbarImage(
                            height: getSize(24.00),
                            width: getSize(24.00),
                            svgPath: ImageConstant.imgNotification,
                            onTap: onTapNotification1),
                        AppbarImage(
                            height: getSize(8.00),
                            width: getSize(8.00),
                            svgPath: ImageConstant.imgClose8x8,
                            margin: getMargin(left: 14, right: 2, bottom: 16))
                      ]))
                ]),
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, top: 25, right: 16, bottom: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_man_fashion".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold14Indigo900
                              .copyWith(letterSpacing: 0.50)),
                      Padding(
                          padding: getPadding(top: 13),
                          child: Obx(() => GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: getVerticalSize(93.00),
                                      crossAxisCount: 4,
                                      mainAxisSpacing: getHorizontalSize(21.00),
                                      crossAxisSpacing:
                                          getHorizontalSize(21.00)),
                              physics: BouncingScrollPhysics(),
                              itemCount: controller
                                  .exploreModelObj.value.exploreItemList.length,
                              itemBuilder: (context, index) {
                                ExploreItemModel model = controller
                                    .exploreModelObj
                                    .value
                                    .exploreItemList[index];
                                return ExploreItemWidget(model);
                              }))),
                      Padding(
                          padding: getPadding(top: 26),
                          child: Text("lbl_woman_fashion".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(letterSpacing: 0.50))),
                      Padding(
                          padding: getPadding(top: 13),
                          child: Obx(() => ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.exploreModelObj.value
                                  .explore1ItemList.length,
                              itemBuilder: (context, index) {
                                Explore1ItemModel model = controller
                                    .exploreModelObj
                                    .value
                                    .explore1ItemList[index];
                                return Explore1ItemWidget(model);
                              })))
                    ]))));
  }

  onTapNotification1() {
    Get.toNamed(AppRoutes.notificationOneScreen);
  }
}
