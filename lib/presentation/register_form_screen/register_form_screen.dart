import 'controller/register_form_controller.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/custom_button.dart';
import 'package:lincoln_s_application1/widgets/custom_icon_button.dart';
import 'package:lincoln_s_application1/widgets/custom_text_form_field.dart';

class RegisterFormScreen extends GetWidget<RegisterFormController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, right: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                          height: 72,
                          width: 72,
                          variant: IconButtonVariant.FillLightblueA200,
                          shape: IconButtonShape.RoundedBorder16,
                          padding: IconButtonPadding.PaddingAll20,
                          child:
                              CustomImageView(svgPath: ImageConstant.imgClose)),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Text("msg_let_s_get_start".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold16
                                  .copyWith(letterSpacing: 0.50))),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Text("msg_create_an_new_a".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12
                                  .copyWith(letterSpacing: 0.50))),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.fullNameController,
                          hintText: "lbl_full_name".tr,
                          margin: getMargin(top: 30),
                          padding: TextFormFieldPadding.PaddingT14,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgUser)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(24.00),
                              minHeight: getSize(24.00))),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.emailController,
                          hintText: "lbl_your_email".tr,
                          margin: getMargin(top: 8),
                          padding: TextFormFieldPadding.PaddingT14,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgMail)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(24.00),
                              minHeight: getSize(24.00))),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.passwordController,
                          hintText: "lbl_password".tr,
                          margin: getMargin(top: 8),
                          padding: TextFormFieldPadding.PaddingT14,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(24.00),
                              minHeight: getSize(24.00)),
                          isObscureText: true),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.passwordAgainController,
                          hintText: "lbl_password_again".tr,
                          margin: getMargin(top: 8),
                          padding: TextFormFieldPadding.PaddingT14,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(24.00),
                              minHeight: getSize(24.00)),
                          isObscureText: true),
                      CustomButton(
                          height: 57,
                          width: 343,
                          text: "lbl_sign_up".tr,
                          margin: getMargin(top: 20),
                          onTap: onTapSignup),
                      Padding(
                          padding: getPadding(top: 20, bottom: 5),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_have_an_account2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.blueGray300,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.50)),
                                TextSpan(
                                    text: " ",
                                    style: TextStyle(
                                        color: ColorConstant.indigoA200,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.50)),
                                TextSpan(
                                    text: "lbl_sign_in".tr,
                                    style: TextStyle(
                                        color: ColorConstant.lightBlueA200,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.50))
                              ]),
                              textAlign: TextAlign.left))
                    ]))));
  }

  onTapSignup() {
    Get.toNamed(AppRoutes.dashboardContainerScreen);
  }
}
