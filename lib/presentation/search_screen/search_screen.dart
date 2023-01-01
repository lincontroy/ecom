import 'controller/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:lincoln_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:lincoln_s_application1/widgets/custom_search_view.dart';

class SearchScreen extends GetWidget<SearchController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                title: CustomSearchView(
                    width: 291,
                    focusNode: FocusNode(),
                    controller: controller.searchController,
                    hintText: "lbl_nike_air_max".tr,
                    margin: getMargin(left: 16),
                    variant: SearchViewVariant.OutlineLightblueA200,
                    padding: SearchViewPadding.PaddingT12,
                    fontStyle: SearchViewFontStyle.PoppinsBold12,
                    prefix: Container(
                        margin:
                            getMargin(left: 16, top: 12, right: 8, bottom: 16),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgSearchLightBlueA200)),
                    prefixConstraints: BoxConstraints(
                        minWidth: getSize(16.00), minHeight: getSize(16.00)),
                    suffix: Padding(
                        padding:
                            EdgeInsets.only(right: getHorizontalSize(15.00)),
                        child: IconButton(
                            onPressed: () {
                              controller.searchController.clear;
                            },
                            icon: Icon(Icons.clear,
                                color: Colors.grey.shade600))),
                    suffixConstraints: BoxConstraints(
                        minWidth: getHorizontalSize(20.00),
                        minHeight: getVerticalSize(20.00))),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgUpload24x24,
                      margin: getMargin(all: 16))
                ]),
            body: Container(
                width: size.width,
                padding: getPadding(top: 11, bottom: 11),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(369.00),
                          decoration:
                              BoxDecoration(color: ColorConstant.blue50)),
                      GestureDetector(
                          onTap: () {
                            onTapTxtNikeairmax273();
                          },
                          child: Container(
                              width: size.width,
                              margin: getMargin(top: 9),
                              padding: getPadding(
                                  left: 16, top: 17, right: 16, bottom: 17),
                              decoration: AppDecoration.txtFillWhiteA700,
                              child: Text("msg_nike_air_max_273".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular12
                                      .copyWith(letterSpacing: 0.50)))),
                      Container(
                          width: size.width,
                          padding: getPadding(
                              left: 16, top: 17, right: 16, bottom: 17),
                          decoration: AppDecoration.txtFillWhiteA700,
                          child: Text("msg_nike_air_vaporm".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12
                                  .copyWith(letterSpacing: 0.50))),
                      Container(
                          width: size.width,
                          padding: getPadding(
                              left: 16, top: 17, right: 16, bottom: 17),
                          decoration: AppDecoration.txtFillWhiteA700,
                          child: Text("msg_nike_air_max_273".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12
                                  .copyWith(letterSpacing: 0.50))),
                      Container(
                          width: size.width,
                          padding: getPadding(
                              left: 16, top: 17, right: 16, bottom: 17),
                          decoration: AppDecoration.txtFillWhiteA700,
                          child: Text("msg_nike_air_max_274".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12
                                  .copyWith(letterSpacing: 0.50))),
                      Container(
                          width: size.width,
                          padding: getPadding(
                              left: 16, top: 17, right: 16, bottom: 17),
                          decoration: AppDecoration.txtFillWhiteA700,
                          child: Text("msg_nike_air_vaporm2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12
                                  .copyWith(letterSpacing: 0.50))),
                      Container(
                          width: size.width,
                          margin: getMargin(bottom: 5),
                          padding: getPadding(
                              left: 16, top: 17, right: 16, bottom: 17),
                          decoration: AppDecoration.txtFillWhiteA700,
                          child: Text("msg_nike_air_max_97".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12
                                  .copyWith(letterSpacing: 0.50)))
                    ]))));
  }

  onTapTxtNikeairmax273() {
    Get.toNamed(AppRoutes.searchResultScreen);
  }
}
