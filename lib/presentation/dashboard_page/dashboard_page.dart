import '../dashboard_page/widgets/categories_item_widget.dart';
import '../dashboard_page/widgets/dashboard_item_widget.dart';
import '../dashboard_page/widgets/flashsale_item_widget.dart';
import '../dashboard_page/widgets/megasale_item_widget.dart';
import '../dashboard_page/widgets/slideroffer_item_widget.dart';
import 'controller/dashboard_controller.dart';
import 'models/categories_item_model.dart';
import 'models/dashboard_item_model.dart';
import 'models/dashboard_model.dart';
import 'models/flashsale_item_model.dart';
import 'models/megasale_item_model.dart';
import 'models/slideroffer_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:lincoln_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class DashboardPage extends StatelessWidget {
  DashboardController controller =
      Get.put(DashboardController(DashboardModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(16.00),
                    width: getSize(16.00),
                    svgPath: ImageConstant.imgSearchLightBlueA200,
                    margin: getMargin(left: 32, top: 20, bottom: 20)),
                title: GestureDetector(
                    onTap: () {
                      onTapTxtSearchproduct();
                    },
                    child: Padding(
                        padding: getPadding(left: 8),
                        child: Text("lbl_search_product".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsRegular12
                                .copyWith(letterSpacing: 0.50)))),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgDownload,
                      margin: getMargin(left: 2, top: 16, bottom: 16),
                      onTap: onTapDownload),
                  Container(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      margin: getMargin(all: 16),
                      child: Stack(alignment: Alignment.topRight, children: [
                        AppbarImage(
                            height: getSize(24.00),
                            width: getSize(24.00),
                            svgPath: ImageConstant.imgNotification,
                            onTap: onTapNotification),
                        AppbarImage(
                            height: getSize(8.00),
                            width: getSize(8.00),
                            svgPath: ImageConstant.imgClose8x8,
                            margin: getMargin(left: 14, right: 2, bottom: 16))
                      ]))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 16, top: 27, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Obx(() => CarouselSlider.builder(
                                  options: CarouselOptions(
                                      height: getVerticalSize(206.00),
                                      initialPage: 0,
                                      autoPlay: true,
                                      viewportFraction: 1.0,
                                      enableInfiniteScroll: false,
                                      scrollDirection: Axis.horizontal,
                                      onPageChanged: (index, reason) {
                                        controller.silderIndex.value = index;
                                      }),
                                  itemCount: controller.dashboardModelObj.value
                                      .sliderofferItemList.length,
                                  itemBuilder: (context, index, realIndex) {
                                    SliderofferItemModel model = controller
                                        .dashboardModelObj
                                        .value
                                        .sliderofferItemList[index];
                                    return SliderofferItemWidget(model);
                                  })),
                              Obx(() => Container(
                                  height: getVerticalSize(8.00),
                                  margin: getMargin(left: 135, top: 16),
                                  child: AnimatedSmoothIndicator(
                                      activeIndex: controller.silderIndex.value,
                                      count: controller.dashboardModelObj.value
                                          .sliderofferItemList.length,
                                      axisDirection: Axis.horizontal,
                                      effect: ScrollingDotsEffect(
                                          spacing: 8,
                                          activeDotColor:
                                              ColorConstant.lightBlueA200,
                                          dotColor: ColorConstant.blue50,
                                          dotHeight: getVerticalSize(8.00),
                                          dotWidth: getHorizontalSize(8.00))))),
                              Padding(
                                  padding: getPadding(top: 25, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_category".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold14Indigo900
                                                .copyWith(letterSpacing: 0.50)),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtMorecategory();
                                            },
                                            child: Text("lbl_more_category".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold14LightblueA200
                                                    .copyWith(
                                                        letterSpacing: 0.50)))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(118.00),
                                      child: Obx(() => ListView.builder(
                                          padding: getPadding(top: 10),
                                          scrollDirection: Axis.horizontal,
                                          physics: BouncingScrollPhysics(),
                                          itemCount: controller
                                              .dashboardModelObj
                                              .value
                                              .categoriesItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            CategoriesItemModel model =
                                                controller
                                                    .dashboardModelObj
                                                    .value
                                                    .categoriesItemList[index];
                                            return CategoriesItemWidget(model);
                                          })))),
                              GestureDetector(
                                  onTap: () {
                                    onTapRowflashsale();
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 23, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("lbl_flash_sale".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold14Indigo900
                                                    .copyWith(
                                                        letterSpacing: 0.50)),
                                            Text("lbl_see_more".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold14LightblueA200
                                                    .copyWith(
                                                        letterSpacing: 0.50))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(250.00),
                                      child: Obx(() => ListView.builder(
                                          padding: getPadding(top: 12),
                                          scrollDirection: Axis.horizontal,
                                          physics: BouncingScrollPhysics(),
                                          itemCount: controller
                                              .dashboardModelObj
                                              .value
                                              .flashsaleItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            FlashsaleItemModel model =
                                                controller
                                                    .dashboardModelObj
                                                    .value
                                                    .flashsaleItemList[index];
                                            return FlashsaleItemWidget(model,
                                                onTapProduct: onTapProduct);
                                          })))),
                              Padding(
                                  padding: getPadding(top: 23, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 1),
                                            child: Text("lbl_mega_sale".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold14Indigo900
                                                    .copyWith(
                                                        letterSpacing: 0.50))),
                                        Padding(
                                            padding: getPadding(bottom: 1),
                                            child: Text("lbl_see_more".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold14LightblueA200
                                                    .copyWith(
                                                        letterSpacing: 0.50)))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(248.00),
                                      child: Obx(() => ListView.builder(
                                          padding: getPadding(top: 10),
                                          scrollDirection: Axis.horizontal,
                                          physics: BouncingScrollPhysics(),
                                          itemCount: controller
                                              .dashboardModelObj
                                              .value
                                              .megasaleItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            MegasaleItemModel model = controller
                                                .dashboardModelObj
                                                .value
                                                .megasaleItemList[index];
                                            return MegasaleItemWidget(model);
                                          })))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgRecomendedproduct,
                                  height: getVerticalSize(206.00),
                                  width: getHorizontalSize(343.00),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(5.00)),
                                  margin: getMargin(top: 29)),
                              Padding(
                                  padding: getPadding(top: 16, right: 16),
                                  child: Obx(() => GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent:
                                                  getVerticalSize(283.00),
                                              crossAxisCount: 2,
                                              mainAxisSpacing:
                                                  getHorizontalSize(13.00),
                                              crossAxisSpacing:
                                                  getHorizontalSize(13.00)),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: controller.dashboardModelObj
                                          .value.dashboardItemList.length,
                                      itemBuilder: (context, index) {
                                        DashboardItemModel model = controller
                                            .dashboardModelObj
                                            .value
                                            .dashboardItemList[index];
                                        return DashboardItemWidget(model);
                                      })))
                            ]))))));
  }

  onTapTxtMorecategory() {
    Get.toNamed(AppRoutes.listCategoryScreen);
  }

  onTapRowflashsale() {
    Get.toNamed(AppRoutes.offerScreen);
  }

  onTapTxtSearchproduct() {
    Get.toNamed(AppRoutes.searchScreen);
  }

  onTapDownload() {
    Get.toNamed(AppRoutes.favoriteProductScreen);
  }

  onTapNotification() {
    Get.toNamed(AppRoutes.notificationOneScreen);
  }

  onTapProduct() {
    Get.toNamed(AppRoutes.productDetailScreen);
  }
}
