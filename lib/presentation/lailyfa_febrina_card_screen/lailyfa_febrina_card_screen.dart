import 'controller/lailyfa_febrina_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:lincoln_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:lincoln_s_application1/widgets/custom_button.dart';
import 'package:lincoln_s_application1/widgets/custom_text_form_field.dart';

class LailyfaFebrinaCardScreen extends GetWidget<LailyfaFebrinaCardController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getVerticalSize(26.00),
                    width: getHorizontalSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 14, bottom: 15),
                    onTap: onTapArrowleft22),
                title: AppbarTitle(
                    text: "msg_lailyfa_febrina".tr,
                    margin: getMargin(left: 12))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 19, right: 14, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: getHorizontalSize(343.00),
                                  margin: getMargin(right: 2),
                                  padding: getPadding(
                                      left: 21, top: 23, right: 21, bottom: 23),
                                  decoration: AppDecoration.fillLightblueA200
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgVolume,
                                            height: getVerticalSize(22.00),
                                            width: getHorizontalSize(36.00),
                                            margin: getMargin(left: 3)),
                                        Padding(
                                            padding: getPadding(top: 30),
                                            child: Text("msg_6326_9124".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtPoppinsBold24
                                                    .copyWith(
                                                        letterSpacing: 0.50))),
                                        Padding(
                                            padding: getPadding(top: 17),
                                            child: Row(children: [
                                              Padding(
                                                  padding: getPadding(top: 2),
                                                  child: Text(
                                                      "lbl_card_holder".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular10WhiteA70087
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.50))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 37, bottom: 2),
                                                  child: Text(
                                                      "lbl_card_save".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular10WhiteA70087
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.50)))
                                            ])),
                                        Padding(
                                            padding: getPadding(top: 1),
                                            child: Row(children: [
                                              Padding(
                                                  padding: getPadding(top: 3),
                                                  child: Text(
                                                      "lbl_lailyfa_febrina".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsBold10WhiteA700
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.50))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 32, bottom: 3),
                                                  child: Text("lbl_06_24".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsBold10WhiteA700
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.50)))
                                            ]))
                                      ])),
                              Container(
                                  width: getHorizontalSize(343.00),
                                  margin: getMargin(left: 2, top: 23),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_card_number".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold14Indigo900
                                                .copyWith(letterSpacing: 0.50)),
                                        CustomTextFormField(
                                            width: 343,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .cardNumberOneController,
                                            hintText: "msg_1231_2312_3".tr,
                                            margin: getMargin(top: 12),
                                            fontStyle: TextFormFieldFontStyle
                                                .PoppinsSemiBold12)
                                      ])),
                              Container(
                                  width: getHorizontalSize(343.00),
                                  margin: getMargin(left: 2, top: 24),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_expiration_date".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold14Indigo900
                                                .copyWith(letterSpacing: 0.50)),
                                        CustomTextFormField(
                                            width: 343,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .expirationDateOneController,
                                            hintText: "lbl_12_12".tr,
                                            margin: getMargin(top: 11),
                                            fontStyle: TextFormFieldFontStyle
                                                .PoppinsSemiBold12)
                                      ])),
                              Container(
                                  width: getHorizontalSize(345.00),
                                  margin: getMargin(top: 29),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_security_code".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold14Indigo900
                                                .copyWith(letterSpacing: 0.50)),
                                        CustomTextFormField(
                                            width: 345,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.zipcodeController,
                                            hintText: "lbl_1219".tr,
                                            margin: getMargin(top: 11),
                                            fontStyle: TextFormFieldFontStyle
                                                .PoppinsSemiBold12)
                                      ])),
                              Container(
                                  width: getHorizontalSize(343.00),
                                  margin: getMargin(left: 2, top: 23),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_card_holder2".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold14Indigo900
                                                .copyWith(letterSpacing: 0.50)),
                                        CustomTextFormField(
                                            width: 343,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .cardholdernameController,
                                            hintText: "lbl_lailyfa_febrina".tr,
                                            margin: getMargin(top: 12),
                                            fontStyle: TextFormFieldFontStyle
                                                .PoppinsSemiBold12,
                                            textInputAction:
                                                TextInputAction.done)
                                      ])),
                              CustomButton(
                                  height: 57,
                                  width: 343,
                                  text: "lbl_save".tr,
                                  margin: getMargin(top: 40),
                                  onTap: onTapSave)
                            ]))))));
  }

  onTapSave() {
    Get.toNamed(AppRoutes.creditCardAndDebitScreen);
  }

  onTapArrowleft22() {
    Get.back();
  }
}
