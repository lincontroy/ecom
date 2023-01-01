import 'controller/payment_method_controller.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:lincoln_s_application1/widgets/app_bar/custom_app_bar.dart';

class PaymentMethodScreen extends GetWidget<PaymentMethodController> {
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
                    margin: getMargin(left: 16, top: 14, bottom: 17),
                    onTap: onTapArrowleft11),
                title: AppbarTitle(
                    text: "lbl_payment".tr, margin: getMargin(left: 12))),
            body: Container(
                width: size.width,
                padding: getPadding(top: 10, bottom: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {
                            onTapRowmobile();
                          },
                          child: Container(
                              width: size.width,
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.fillBlue50,
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgMobile,
                                        height: getSize(24.00),
                                        width: getSize(24.00)),
                                    Padding(
                                        padding: getPadding(
                                            left: 16,
                                            top: 2,
                                            right: 169,
                                            bottom: 3),
                                        child: Text("msg_credit_card_or".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold12Indigo900
                                                .copyWith(letterSpacing: 0.50)))
                                  ]))),
                      Container(
                          width: size.width,
                          padding: getPadding(all: 16),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgPaypalicon,
                                height: getSize(24.00),
                                width: getSize(24.00)),
                            Padding(
                                padding: getPadding(
                                    left: 16, top: 4, right: 257, bottom: 1),
                                child: Text("lbl_paypal".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold12Indigo900
                                        .copyWith(letterSpacing: 0.50)))
                          ])),
                      Container(
                          width: size.width,
                          margin: getMargin(bottom: 5),
                          padding: getPadding(all: 16),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgAirplane24x24,
                                    height: getSize(24.00),
                                    width: getSize(24.00)),
                                Padding(
                                    padding: getPadding(
                                        left: 16,
                                        top: 2,
                                        right: 210,
                                        bottom: 3),
                                    child: Text("lbl_bank_transfer".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold12Indigo900
                                            .copyWith(letterSpacing: 0.50)))
                              ]))
                    ]))));
  }

  onTapRowmobile() {
    Get.toNamed(AppRoutes.chooseCreditOrDebitCardScreen);
  }

  onTapArrowleft11() {
    Get.back();
  }
}
