import 'controller/add_address_controller.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:lincoln_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:lincoln_s_application1/widgets/custom_button.dart';
import 'package:lincoln_s_application1/widgets/custom_text_form_field.dart';

class AddAddressScreen extends GetWidget<AddAddressController> {
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
                    onTap: onTapArrowleft17),
                title: AppbarTitle(
                    text: "lbl_add_address".tr, margin: getMargin(left: 12))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 29, right: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("msg_country_or_regi".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold14Indigo900
                                      .copyWith(letterSpacing: 0.50)),
                              CustomTextFormField(
                                  width: 343,
                                  focusNode: FocusNode(),
                                  controller: controller.oldPasswordController,
                                  hintText: "msg_enter_the_count".tr,
                                  margin: getMargin(top: 11),
                                  variant:
                                      TextFormFieldVariant.OutlineBlue50_1),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("lbl_first_name".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(letterSpacing: 0.50))),
                              CustomTextFormField(
                                  width: 343,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.oldPasswordOneController,
                                  hintText: "msg_enter_the_first".tr,
                                  margin: getMargin(top: 13),
                                  variant:
                                      TextFormFieldVariant.OutlineBlue50_1),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("lbl_last_name".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(letterSpacing: 0.50))),
                              CustomTextFormField(
                                  width: 343,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.oldPasswordTwoController,
                                  hintText: "msg_enter_the_last".tr,
                                  margin: getMargin(top: 12),
                                  variant:
                                      TextFormFieldVariant.OutlineBlue50_1),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Text("lbl_street_address".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(letterSpacing: 0.50))),
                              CustomTextFormField(
                                  width: 343,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.oldPasswordThreeController,
                                  hintText: "msg_enter_the_stree".tr,
                                  margin: getMargin(top: 12),
                                  variant:
                                      TextFormFieldVariant.OutlineBlue50_1),
                              Padding(
                                  padding: getPadding(top: 21),
                                  child: Text("msg_street_address".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(letterSpacing: 0.50))),
                              CustomTextFormField(
                                  width: 343,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.oldPasswordFourController,
                                  hintText: "msg_enter_the_stree2".tr,
                                  margin: getMargin(top: 16),
                                  variant:
                                      TextFormFieldVariant.OutlineBlue50_1),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("lbl_city".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(letterSpacing: 0.50))),
                              CustomTextFormField(
                                  width: 343,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.oldPasswordFiveController,
                                  hintText: "lbl_enter_the_city".tr,
                                  margin: getMargin(top: 11),
                                  variant:
                                      TextFormFieldVariant.OutlineBlue50_1),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Text("msg_state_province".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(letterSpacing: 0.50))),
                              CustomTextFormField(
                                  width: 343,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.oldPasswordSixController,
                                  hintText: "msg_enter_the_state".tr,
                                  margin: getMargin(top: 12),
                                  variant:
                                      TextFormFieldVariant.OutlineBlue50_1),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("lbl_zip_code".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(letterSpacing: 0.50))),
                              CustomTextFormField(
                                  width: 343,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.oldPasswordSevenController,
                                  hintText: "msg_enter_the_zip_c".tr,
                                  margin: getMargin(top: 11),
                                  variant:
                                      TextFormFieldVariant.OutlineBlue50_1),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Text("lbl_phone_number".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(letterSpacing: 0.50))),
                              CustomTextFormField(
                                  width: 343,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.oldPasswordEightController,
                                  hintText: "msg_enter_the_phone".tr,
                                  margin: getMargin(top: 12),
                                  variant: TextFormFieldVariant.OutlineBlue50_1,
                                  textInputAction: TextInputAction.done),
                              CustomButton(
                                  height: 57,
                                  width: 343,
                                  text: "lbl_add_address".tr,
                                  margin: getMargin(top: 20))
                            ]))))));
  }

  onTapArrowleft17() {
    Get.back();
  }
}
