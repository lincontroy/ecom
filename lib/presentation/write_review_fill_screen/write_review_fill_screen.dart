import 'controller/write_review_fill_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:lincoln_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:lincoln_s_application1/widgets/custom_button.dart';
import 'package:lincoln_s_application1/widgets/custom_text_form_field.dart';

class WriteReviewFillScreen extends GetWidget<WriteReviewFillController> {
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
                    onTap: onTapArrowleft3),
                title: AppbarTitle(
                    text: "lbl_write_review".tr, margin: getMargin(left: 12))),
            body: Container(
                width: size.width,
                padding: getPadding(left: 15, top: 31, right: 15, bottom: 31),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(343.00),
                          child: Text("msg_please_write_ov".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(letterSpacing: 0.50))),
                      Padding(
                          padding: getPadding(top: 18),
                          child: RatingBar.builder(
                              initialRating: 4,
                              minRating: 0,
                              direction: Axis.horizontal,
                              allowHalfRating: false,
                              itemSize: getVerticalSize(32.00),
                              unratedColor: ColorConstant.blue50,
                              itemCount: 5,
                              updateOnDrag: true,
                              onRatingUpdate: (rating) {},
                              itemBuilder: (context, _) {
                                return Icon(Icons.star,
                                    color: ColorConstant.yellow700);
                              })),
                      Padding(
                          padding: getPadding(top: 22),
                          child: Text("msg_write_your_revi".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(letterSpacing: 0.50))),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.addreviewController,
                          hintText: "lbl_add_review".tr,
                          margin: getMargin(top: 13, bottom: 5),
                          padding: TextFormFieldPadding.PaddingT17_1,
                          fontStyle: TextFormFieldFontStyle.PoppinsBold12,
                          textInputAction: TextInputAction.done,
                          maxLines: 8)
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 16, right: 16, bottom: 34),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                          height: 57, width: 343, text: "lbl_write_review".tr)
                    ]))));
  }

  onTapArrowleft3() {
    Get.back();
  }
}
