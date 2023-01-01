import '../product_detail_screen/widgets/recomended_item_widget.dart';
import '../product_detail_screen/widgets/sizes_item_widget.dart';
import '../product_detail_screen/widgets/slider_item_widget.dart';
import 'controller/product_detail_controller.dart';
import 'models/recomended_item_model.dart';
import 'models/sizes_item_model.dart';
import 'models/slider_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:lincoln_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:lincoln_s_application1/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailScreen extends GetWidget<ProductDetailController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 16, bottom: 15),
                    onTap: onTapArrowleft1),
                title: AppbarTitle(
                    text: "msg_nike_air_max_272".tr,
                    margin: getMargin(left: 12)),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgSearch,
                      margin: getMargin(left: 16, top: 16, bottom: 15),
                      onTap: onTapSearch1),
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgOverflowmenu,
                      margin:
                          getMargin(left: 16, top: 16, right: 16, bottom: 15))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 12, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Obx(() => CarouselSlider.builder(
                                  options: CarouselOptions(
                                      height: getVerticalSize(238.00),
                                      initialPage: 0,
                                      autoPlay: true,
                                      viewportFraction: 1.0,
                                      enableInfiniteScroll: false,
                                      scrollDirection: Axis.horizontal,
                                      onPageChanged: (index, reason) {
                                        controller.silderIndex.value = index;
                                      }),
                                  itemCount: controller.productDetailModelObj
                                      .value.sliderItemList.length,
                                  itemBuilder: (context, index, realIndex) {
                                    SliderItemModel model = controller
                                        .productDetailModelObj
                                        .value
                                        .sliderItemList[index];
                                    return SliderItemWidget(model);
                                  })),
                              Align(
                                  alignment: Alignment.center,
                                  child: Obx(() => Container(
                                      height: getVerticalSize(8.00),
                                      margin: getMargin(top: 16),
                                      child: AnimatedSmoothIndicator(
                                          activeIndex:
                                              controller.silderIndex.value,
                                          count: controller
                                              .productDetailModelObj
                                              .value
                                              .sliderItemList
                                              .length,
                                          axisDirection: Axis.horizontal,
                                          effect: ScrollingDotsEffect(
                                              spacing: 8,
                                              activeDotColor:
                                                  ColorConstant.lightBlueA200,
                                              dotColor: ColorConstant.blue50,
                                              dotHeight: getVerticalSize(8.00),
                                              dotWidth:
                                                  getHorizontalSize(8.00)))))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 18, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                width:
                                                    getHorizontalSize(275.00),
                                                margin: getMargin(top: 3),
                                                child: Text(
                                                    "msg_nike_air_zoom_p".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsBold20
                                                        .copyWith(
                                                            letterSpacing:
                                                                0.50))),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgDownload,
                                                height: getSize(24.00),
                                                width: getSize(24.00),
                                                margin: getMargin(bottom: 26))
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 16, top: 15),
                                  child: RatingBar.builder(
                                      initialRating: 4,
                                      minRating: 0,
                                      direction: Axis.horizontal,
                                      allowHalfRating: false,
                                      itemSize: getVerticalSize(16.00),
                                      unratedColor: ColorConstant.blue50,
                                      itemCount: 5,
                                      updateOnDrag: true,
                                      onRatingUpdate: (rating) {},
                                      itemBuilder: (context, _) {
                                        return Icon(Icons.star,
                                            color: ColorConstant.yellow700);
                                      })),
                              Padding(
                                  padding: getPadding(left: 16, top: 16),
                                  child: Text("lbl_299_43".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPoppinsBold20LightblueA200
                                          .copyWith(letterSpacing: 0.50))),
                              Padding(
                                  padding: getPadding(left: 16, top: 22),
                                  child: Text("lbl_select_size".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(letterSpacing: 0.50))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(61.00),
                                      child: Obx(() => ListView.builder(
                                          padding:
                                              getPadding(left: 16, top: 13),
                                          scrollDirection: Axis.horizontal,
                                          physics: BouncingScrollPhysics(),
                                          itemCount: controller
                                              .productDetailModelObj
                                              .value
                                              .sizesItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            SizesItemModel model = controller
                                                .productDetailModelObj
                                                .value
                                                .sizesItemList[index];
                                            return SizesItemWidget(model);
                                          })))),
                              Padding(
                                  padding: getPadding(left: 16, top: 23),
                                  child: Text("lbl_select_color".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(letterSpacing: 0.50))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgColors,
                                  height: getVerticalSize(48.00),
                                  width: getHorizontalSize(359.00),
                                  alignment: Alignment.centerRight,
                                  margin: getMargin(top: 12)),
                              Padding(
                                  padding: getPadding(left: 16, top: 24),
                                  child: Text("lbl_specification".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(letterSpacing: 0.50))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 12, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(bottom: 41),
                                                child: Text("lbl_shown".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12Indigo900
                                                        .copyWith(
                                                            letterSpacing:
                                                                0.50))),
                                            Container(
                                                width:
                                                    getHorizontalSize(169.00),
                                                margin: getMargin(top: 5),
                                                child: Text(
                                                    "msg_laser_blue_anth".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.right,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12
                                                        .copyWith(
                                                            letterSpacing:
                                                                0.50)))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 22, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: Text("lbl_style".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12Indigo900
                                                        .copyWith(
                                                            letterSpacing:
                                                                0.50))),
                                            Padding(
                                                padding: getPadding(bottom: 1),
                                                child: Text("lbl_cd0113_400".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12
                                                        .copyWith(
                                                            letterSpacing:
                                                                0.50)))
                                          ]))),
                              Container(
                                  width: getHorizontalSize(320.00),
                                  margin: getMargin(left: 16, top: 22),
                                  child: Text("msg_the_nike_air_ma".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular12
                                          .copyWith(letterSpacing: 0.50))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 26, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("lbl_review_product".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold14Indigo900
                                                    .copyWith(
                                                        letterSpacing: 0.50)),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtSeemore();
                                                },
                                                child: Text("lbl_see_more".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsBold14LightblueA200
                                                        .copyWith(
                                                            letterSpacing:
                                                                0.50)))
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 16, top: 8),
                                  child: Row(children: [
                                    RatingBar.builder(
                                        initialRating: 4,
                                        minRating: 0,
                                        direction: Axis.horizontal,
                                        allowHalfRating: false,
                                        itemSize: getVerticalSize(16.00),
                                        unratedColor: ColorConstant.blue50,
                                        itemCount: 5,
                                        updateOnDrag: true,
                                        onRatingUpdate: (rating) {},
                                        itemBuilder: (context, _) {
                                          return Icon(Icons.star,
                                              color: ColorConstant.yellow700);
                                        }),
                                    Padding(
                                        padding: getPadding(left: 8, bottom: 1),
                                        child: Text("lbl_4_5".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold10Bluegray300
                                                .copyWith(
                                                    letterSpacing: 0.50))),
                                    Padding(
                                        padding: getPadding(left: 3, bottom: 1),
                                        child: Text("lbl_5_review".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsRegular10
                                                .copyWith(letterSpacing: 0.50)))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 16, top: 16),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgProfilepicture,
                                        height: getSize(48.00),
                                        width: getSize(48.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(24.00))),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 2, bottom: 4),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_james_lawson".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsBold14Indigo900
                                                      .copyWith(
                                                          letterSpacing: 0.50)),
                                              Padding(
                                                  padding: getPadding(top: 4),
                                                  child: RatingBar.builder(
                                                      initialRating: 4,
                                                      minRating: 0,
                                                      direction:
                                                          Axis.horizontal,
                                                      allowHalfRating: false,
                                                      itemSize: getVerticalSize(
                                                          16.00),
                                                      unratedColor:
                                                          ColorConstant.blue50,
                                                      itemCount: 5,
                                                      updateOnDrag: true,
                                                      onRatingUpdate:
                                                          (rating) {},
                                                      itemBuilder:
                                                          (context, _) {
                                                        return Icon(Icons.star,
                                                            color: ColorConstant
                                                                .yellow700);
                                                      }))
                                            ]))
                                  ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: getHorizontalSize(339.00),
                                      margin: getMargin(top: 21),
                                      child: Text("msg_air_max_are_alw".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsRegular12
                                              .copyWith(letterSpacing: 0.50)))),
                              Padding(
                                  padding: getPadding(left: 16, top: 19),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgProductpicture02,
                                        height: getSize(72.00),
                                        width: getSize(72.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(8.00))),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgProductpicture03,
                                        height: getSize(72.00),
                                        width: getSize(72.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(8.00)),
                                        margin: getMargin(left: 12)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgProductpicture01,
                                        height: getSize(72.00),
                                        width: getSize(72.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(5.00)),
                                        margin: getMargin(left: 12))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 16, top: 16),
                                  child: Text("msg_december_10_20".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular10
                                          .copyWith(letterSpacing: 0.50))),
                              Padding(
                                  padding: getPadding(left: 16, top: 23),
                                  child: Text("msg_you_might_also".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(letterSpacing: 0.07))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(249.00),
                                      child: Obx(() => ListView.builder(
                                          padding:
                                              getPadding(left: 16, top: 11),
                                          scrollDirection: Axis.horizontal,
                                          physics: BouncingScrollPhysics(),
                                          itemCount: controller
                                              .productDetailModelObj
                                              .value
                                              .recomendedItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            RecomendedItemModel model =
                                                controller
                                                    .productDetailModelObj
                                                    .value
                                                    .recomendedItemList[index];
                                            return RecomendedItemWidget(model);
                                          })))),
                              CustomButton(
                                  height: 57,
                                  width: 343,
                                  text: "lbl_add_to_cart".tr,
                                  margin: getMargin(top: 21),
                                  alignment: Alignment.center)
                            ]))))));
  }

  onTapTxtSeemore() {
    Get.toNamed(AppRoutes.reviewProductScreen);
  }

  onTapArrowleft1() {
    Get.back();
  }

  onTapSearch1() {
    Get.toNamed(AppRoutes.searchScreen);
  }
}
