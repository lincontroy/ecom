import 'controller/offer_screen_one_controller.dart';
import 'models/offer_screen_one_model.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:lincoln_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class OfferScreenOnePage extends StatelessWidget {
  OfferScreenOneController controller =
      Get.put(OfferScreenOneController(OfferScreenOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                title: AppbarTitle(
                    text: "lbl_offer".tr, margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgNotification,
                      margin:
                          getMargin(left: 13, top: 16, right: 13, bottom: 15),
                      onTap: onTapNotification3)
                ]),
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, top: 28, right: 16, bottom: 28),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(343.00),
                          padding: getPadding(
                              left: 16, top: 21, right: 16, bottom: 21),
                          decoration: AppDecoration.fillLightblueA200.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: getHorizontalSize(201.00),
                                    child: Text("msg_use_megsl_cup".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold16WhiteA700
                                            .copyWith(letterSpacing: 0.50)))
                              ])),
                      Container(
                          height: getVerticalSize(206.00),
                          width: getHorizontalSize(343.00),
                          margin: getMargin(top: 16),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgPromotionimage,
                                height: getVerticalSize(206.00),
                                width: getHorizontalSize(343.00),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(5.00)),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 24),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(209.00),
                                              child: Text(
                                                  "msg_super_flash_sal".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsBold24
                                                      .copyWith(
                                                          letterSpacing:
                                                              0.50))),
                                          Padding(
                                              padding: getPadding(top: 38),
                                              child: Row(children: [
                                                Container(
                                                    width: getHorizontalSize(
                                                        42.00),
                                                    padding: getPadding(
                                                        left: 9,
                                                        top: 8,
                                                        right: 9,
                                                        bottom: 8),
                                                    decoration: AppDecoration
                                                        .txtFillWhiteA700
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .txtRoundedBorder5),
                                                    child: Text("lbl_08".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsBold16
                                                            .copyWith(
                                                                letterSpacing:
                                                                    0.50))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 4,
                                                        top: 10,
                                                        bottom: 9),
                                                    child: Text("lbl".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsBold14WhiteA700
                                                            .copyWith(
                                                                letterSpacing:
                                                                    0.07))),
                                                Container(
                                                    width: getHorizontalSize(
                                                        42.00),
                                                    margin: getMargin(left: 4),
                                                    padding: getPadding(
                                                        left: 9,
                                                        top: 8,
                                                        right: 9,
                                                        bottom: 8),
                                                    decoration: AppDecoration
                                                        .txtFillWhiteA700
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .txtRoundedBorder5),
                                                    child: Text("lbl_34".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsBold16
                                                            .copyWith(
                                                                letterSpacing:
                                                                    0.50))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 4,
                                                        top: 10,
                                                        bottom: 9),
                                                    child: Text("lbl".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsBold14WhiteA700
                                                            .copyWith(
                                                                letterSpacing:
                                                                    0.07))),
                                                Container(
                                                    width: getHorizontalSize(
                                                        42.00),
                                                    margin: getMargin(left: 4),
                                                    padding: getPadding(
                                                        left: 10,
                                                        top: 8,
                                                        right: 10,
                                                        bottom: 8),
                                                    decoration: AppDecoration
                                                        .txtFillWhiteA700
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .txtRoundedBorder5),
                                                    child: Text("lbl_52".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsBold16
                                                            .copyWith(
                                                                letterSpacing:
                                                                    0.50)))
                                              ]))
                                        ])))
                          ])),
                      Container(
                          height: getVerticalSize(206.00),
                          width: getHorizontalSize(343.00),
                          margin: getMargin(top: 16, bottom: 5),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRecomendedproduct,
                                height: getVerticalSize(206.00),
                                width: getHorizontalSize(343.00),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(5.00)),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: getPadding(left: 24, top: 39),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(252.00),
                                              child: Text(
                                                  "msg_90_off_super_m".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsBold24
                                                      .copyWith(
                                                          letterSpacing:
                                                              0.50))),
                                          Padding(
                                              padding: getPadding(top: 28),
                                              child: Text(
                                                  "msg_special_birthda".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12WhiteA700
                                                      .copyWith(
                                                          letterSpacing: 0.50)))
                                        ])))
                          ]))
                    ]))));
  }

  onTapNotification3() {
    Get.toNamed(AppRoutes.notificationOneScreen);
  }
}
