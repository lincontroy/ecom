import '../offer_screen/widgets/offer_screen_item_widget.dart';
import 'controller/offer_controller.dart';
import 'models/offer_screen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:lincoln_s_application1/widgets/app_bar/custom_app_bar.dart';

class OfferScreen extends GetWidget<OfferController> {
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
                    onTap: onTapArrowleft),
                title: AppbarTitle(
                    text: "msg_super_flash_sal2".tr,
                    margin: getMargin(left: 12)),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgSearch,
                      margin:
                          getMargin(left: 16, top: 14, right: 16, bottom: 17),
                      onTap: onTapSearch)
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 26, right: 16, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(206.00),
                                  width: getHorizontalSize(343.00),
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgPromotionimage,
                                            height: getVerticalSize(206.00),
                                            width: getHorizontalSize(343.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(5.00)),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(left: 24),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  209.00),
                                                          child: Text(
                                                              "msg_super_flash_sal"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsBold24
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.50))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 38),
                                                          child: Row(children: [
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        42.00),
                                                                padding:
                                                                    getPadding(
                                                                        left: 9,
                                                                        top: 8,
                                                                        right:
                                                                            9,
                                                                        bottom:
                                                                            8),
                                                                decoration: AppDecoration
                                                                    .txtFillWhiteA700
                                                                    .copyWith(
                                                                        borderRadius: BorderRadiusStyle
                                                                            .txtRoundedBorder5),
                                                                child: Text(
                                                                    "lbl_08".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsBold16
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.50))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 4,
                                                                        top: 10,
                                                                        bottom:
                                                                            9),
                                                                child: Text(
                                                                    "lbl".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsBold14WhiteA700
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.07))),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        42.00),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            4),
                                                                padding:
                                                                    getPadding(
                                                                        left: 9,
                                                                        top: 8,
                                                                        right:
                                                                            9,
                                                                        bottom:
                                                                            8),
                                                                decoration: AppDecoration
                                                                    .txtFillWhiteA700
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .txtRoundedBorder5),
                                                                child: Text(
                                                                    "lbl_34".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsBold16
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.50))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 4,
                                                                        top: 10,
                                                                        bottom:
                                                                            9),
                                                                child: Text(
                                                                    "lbl".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsBold14WhiteA700
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.07))),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        42.00),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            4),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            10,
                                                                        top: 8,
                                                                        right:
                                                                            10,
                                                                        bottom:
                                                                            8),
                                                                decoration: AppDecoration
                                                                    .txtFillWhiteA700
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .txtRoundedBorder5),
                                                                child: Text(
                                                                    "lbl_52".tr,
                                                                    overflow: TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsBold16
                                                                        .copyWith(
                                                                            letterSpacing: 0.50)))
                                                          ]))
                                                    ])))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Obx(() => GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent:
                                                  getVerticalSize(283.00),
                                              crossAxisCount: 2,
                                              mainAxisSpacing:
                                                  getHorizontalSize(13.00),
                                              crossAxisSpacing:
                                                  getHorizontalSize(13.00)),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: controller.offerModelObj.value
                                          .offerScreenItemList.length,
                                      itemBuilder: (context, index) {
                                        OfferScreenItemModel model = controller
                                            .offerModelObj
                                            .value
                                            .offerScreenItemList[index];
                                        return OfferScreenItemWidget(model,
                                            onTapProduct: onTapProduct);
                                      })))
                            ]))))));
  }

  onTapProduct() {
    Get.toNamed(AppRoutes.productDetailScreen);
  }

  onTapArrowleft() {
    Get.back();
  }

  onTapSearch() {
    Get.toNamed(AppRoutes.searchScreen);
  }
}
