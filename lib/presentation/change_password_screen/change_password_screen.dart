import 'controller/change_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:lincoln_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:lincoln_s_application1/widgets/custom_button.dart';
import 'package:lincoln_s_application1/widgets/custom_text_form_field.dart';

class ChangePasswordScreen extends GetWidget<ChangePasswordController> {
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
                    onTap: onTapArrowleft14),
                title: AppbarTitle(
                    text: "lbl_change_password".tr,
                    margin: getMargin(left: 12))),
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, top: 26, right: 16, bottom: 26),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_old_password".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold14Indigo900
                              .copyWith(letterSpacing: 0.50)),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.oldPasswordOneController,
                          hintText: "msg".tr,
                          margin: getMargin(top: 12),
                          variant: TextFormFieldVariant.OutlineBlue50_1,
                          padding: TextFormFieldPadding.PaddingT14,
                          fontStyle: TextFormFieldFontStyle.PoppinsBold12,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(24.00),
                              minHeight: getSize(24.00)),
                          isObscureText: true),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("lbl_new_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(letterSpacing: 0.50))),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.newPasswordOneController,
                          hintText: "msg".tr,
                          margin: getMargin(top: 12),
                          variant: TextFormFieldVariant.OutlineBlue50_1,
                          padding: TextFormFieldPadding.PaddingT14,
                          fontStyle: TextFormFieldFontStyle.PoppinsBold12,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(24.00),
                              minHeight: getSize(24.00)),
                          isObscureText: true),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Text("msg_new_password_ag".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(letterSpacing: 0.50))),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.newPasswordAgainOneController,
                          hintText: "msg".tr,
                          margin: getMargin(top: 11),
                          variant: TextFormFieldVariant.OutlineBlue50_1,
                          padding: TextFormFieldPadding.PaddingT14,
                          fontStyle: TextFormFieldFontStyle.PoppinsBold12,
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
                          text: "lbl_save".tr,
                          margin: getMargin(top: 276, bottom: 5))
                    ]))));
  }

  onTapArrowleft14() {
    Get.back();
  }
}
