import 'controller/add_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:lincoln_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:lincoln_s_application1/widgets/custom_button.dart';
import 'package:lincoln_s_application1/widgets/custom_text_form_field.dart';

class AddCardScreen extends GetWidget<AddCardController> {
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
                    margin: getMargin(left: 16, top: 15, bottom: 16),
                    onTap: onTapArrowleft21),
                title: AppbarTitle(
                    text: "lbl_add_card".tr, margin: getMargin(left: 12))),
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, top: 27, right: 16, bottom: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_card_number".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold14Indigo900
                              .copyWith(letterSpacing: 0.50)),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.cardNumberOneController,
                          hintText: "msg_enter_card_numb".tr,
                          margin: getMargin(top: 12)),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Text("lbl_expiration_date".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(letterSpacing: 0.50))),
                      CustomTextFormField(
                          width: 340,
                          focusNode: FocusNode(),
                          controller: controller.expirationDateOneController,
                          hintText: "lbl_expiration_date".tr,
                          margin: getMargin(top: 11)),
                      Container(
                          width: getHorizontalSize(340.00),
                          margin: getMargin(top: 29),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder5),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_security_code".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold14Indigo900
                                        .copyWith(letterSpacing: 0.50)),
                                CustomTextFormField(
                                    width: 340,
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.securityCodeOneController,
                                    hintText: "lbl_security_code".tr,
                                    margin: getMargin(top: 11))
                              ])),
                      Container(
                          width: getHorizontalSize(343.00),
                          margin: getMargin(top: 23),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder5),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_card_holder2".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold14Indigo900
                                        .copyWith(letterSpacing: 0.50)),
                                CustomTextFormField(
                                    width: 343,
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.cardHolderOneController,
                                    hintText: "msg_enter_card_numb".tr,
                                    margin: getMargin(top: 12),
                                    textInputAction: TextInputAction.done)
                              ])),
                      CustomButton(
                          height: 57,
                          width: 343,
                          text: "lbl_add_card".tr,
                          margin: getMargin(top: 166, bottom: 5),
                          onTap: onTapAddcardOne)
                    ]))));
  }

  onTapAddcardOne() {
    Get.toNamed(AppRoutes.creditCardAndDebitScreen);
  }

  onTapArrowleft21() {
    Get.back();
  }
}
