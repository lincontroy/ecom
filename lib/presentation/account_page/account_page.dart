import 'controller/account_controller.dart';
import 'models/account_model.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:lincoln_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class AccountPage extends StatelessWidget {
  AccountController controller = Get.put(AccountController(AccountModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                title: AppbarTitle(
                    text: "lbl_account".tr, margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgNotification,
                      margin:
                          getMargin(left: 13, top: 15, right: 13, bottom: 16),
                      onTap: onTapNotification4)
                ]),
            body: Container(
                width: size.width,
                padding: getPadding(top: 11, bottom: 11),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {
                            onTapUser();
                          },
                          child: Container(
                              width: size.width,
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.fillWhiteA700,
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgUser24x24,
                                        height: getSize(24.00),
                                        width: getSize(24.00)),
                                    Padding(
                                        padding: getPadding(
                                            left: 16,
                                            top: 2,
                                            right: 260,
                                            bottom: 3),
                                        child: Text("lbl_profile".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold12Indigo900
                                                .copyWith(letterSpacing: 0.50)))
                                  ]))),
                      Container(
                          width: size.width,
                          padding: getPadding(all: 16),
                          decoration: AppDecoration.fillBlue50,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgBagicon,
                                    height: getSize(24.00),
                                    width: getSize(24.00)),
                                Padding(
                                    padding: getPadding(
                                        left: 16,
                                        top: 2,
                                        right: 265,
                                        bottom: 3),
                                    child: Text("lbl_order".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold12Indigo900
                                            .copyWith(letterSpacing: 0.50)))
                              ])),
                      Container(
                          width: size.width,
                          padding: getPadding(all: 16),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgLocation,
                                    height: getSize(24.00),
                                    width: getSize(24.00)),
                                Padding(
                                    padding: getPadding(
                                        left: 16,
                                        top: 2,
                                        right: 248,
                                        bottom: 3),
                                    child: Text("lbl_address".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold12Indigo900
                                            .copyWith(letterSpacing: 0.50)))
                              ])),
                      GestureDetector(
                          onTap: () {
                            onTapPayment();
                          },
                          child: Container(
                              width: size.width,
                              margin: getMargin(bottom: 5),
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.fillWhiteA700,
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgMobile,
                                    height: getSize(24.00),
                                    width: getSize(24.00)),
                                Padding(
                                    padding: getPadding(
                                        left: 16,
                                        top: 4,
                                        right: 243,
                                        bottom: 1),
                                    child: Text("lbl_payment".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold12Indigo900
                                            .copyWith(letterSpacing: 0.50)))
                              ])))
                    ]))));
  }

  onTapUser() {
    Get.toNamed(AppRoutes.profileScreen);
  }

  onTapPayment() {
    Get.toNamed(AppRoutes.addPaymentScreen);
  }

  onTapNotification4() {
    Get.toNamed(AppRoutes.notificationOneScreen);
  }
}
