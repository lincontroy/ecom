import 'controller/sort_by_controller.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:lincoln_s_application1/widgets/app_bar/custom_app_bar.dart';

class SortByScreen extends GetWidget<SortByController> {
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
                    onTap: onTapArrowleft9),
                title: AppbarTitle(
                    text: "lbl_sort_by".tr, margin: getMargin(left: 12))),
            body: Container(
                width: size.width,
                padding: getPadding(top: 10, bottom: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: size.width,
                          padding: getPadding(
                              left: 16, top: 17, right: 16, bottom: 17),
                          decoration: AppDecoration.txtFillWhiteA700,
                          child: Text("lbl_best_match".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold12
                                  .copyWith(letterSpacing: 0.50))),
                      Container(
                          width: size.width,
                          padding: getPadding(
                              left: 16, top: 17, right: 16, bottom: 17),
                          decoration: AppDecoration.txtFillBlue50,
                          child: Text("msg_time_ending_so".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold12Indigo900
                                  .copyWith(letterSpacing: 0.50))),
                      Container(
                          width: size.width,
                          padding: getPadding(
                              left: 16, top: 17, right: 16, bottom: 17),
                          decoration: AppDecoration.txtFillWhiteA700,
                          child: Text("msg_time_newly_lis".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold12Indigo900
                                  .copyWith(letterSpacing: 0.50))),
                      Container(
                          width: size.width,
                          padding: getPadding(
                              left: 16, top: 17, right: 16, bottom: 17),
                          decoration: AppDecoration.txtFillWhiteA700,
                          child: Text("msg_price_shippin".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold12Indigo900
                                  .copyWith(letterSpacing: 0.50))),
                      Container(
                          width: size.width,
                          padding: getPadding(
                              left: 16, top: 17, right: 16, bottom: 17),
                          decoration: AppDecoration.txtFillWhiteA700,
                          child: Text("msg_price_shippin2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold12Indigo900
                                  .copyWith(letterSpacing: 0.50))),
                      Container(
                          width: size.width,
                          margin: getMargin(bottom: 5),
                          padding: getPadding(
                              left: 16, top: 17, right: 16, bottom: 17),
                          decoration: AppDecoration.txtFillWhiteA700,
                          child: Text("msg_distance_neare".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold12Indigo900
                                  .copyWith(letterSpacing: 0.50)))
                    ]))));
  }

  onTapArrowleft9() {
    Get.back();
  }
}
