import 'controller/notification_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:lincoln_s_application1/widgets/app_bar/custom_app_bar.dart';

class NotificationOneScreen extends GetWidget<NotificationOneController> {
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
                    onTap: onTapArrowleft4),
                title: AppbarTitle(
                    text: "lbl_notification".tr, margin: getMargin(left: 12))),
            body: Container(
                width: size.width,
                padding: getPadding(top: 12, bottom: 12),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {
                            onTapOffer();
                          },
                          child: Container(
                              width: size.width,
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.fillWhiteA700,
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgOffer24x24,
                                        height: getSize(24.00),
                                        width: getSize(24.00)),
                                    Padding(
                                        padding: getPadding(
                                            left: 16,
                                            top: 2,
                                            right: 270,
                                            bottom: 3),
                                        child: Text("lbl_offer".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold12Indigo900
                                                .copyWith(letterSpacing: 0.50)))
                                  ]))),
                      GestureDetector(
                          onTap: () {
                            onTapFeed();
                          },
                          child: Container(
                              width: size.width,
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.fillWhiteA700,
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgFile,
                                        height: getSize(24.00),
                                        width: getSize(24.00)),
                                    Padding(
                                        padding: getPadding(
                                            left: 16,
                                            top: 2,
                                            right: 272,
                                            bottom: 3),
                                        child: Text("lbl_feed".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold12Indigo900
                                                .copyWith(letterSpacing: 0.50)))
                                  ]))),
                      GestureDetector(
                          onTap: () {
                            onTapActivity();
                          },
                          child: Container(
                              width: size.width,
                              margin: getMargin(bottom: 5),
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.fillWhiteA700,
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgNotification24x24,
                                    height: getSize(24.00),
                                    width: getSize(24.00)),
                                Padding(
                                    padding: getPadding(
                                        left: 16,
                                        top: 3,
                                        right: 256,
                                        bottom: 2),
                                    child: Text("lbl_acivity".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold12Indigo900
                                            .copyWith(letterSpacing: 0.50)))
                              ])))
                    ]))));
  }

  onTapOffer() {
    Get.toNamed(AppRoutes.notificationOfferScreen);
  }

  onTapFeed() {
    Get.toNamed(AppRoutes.notificationFeedScreen);
  }

  onTapActivity() {
    Get.toNamed(AppRoutes.notificationScreen);
  }

  onTapArrowleft4() {
    Get.back();
  }
}
