import '../order_details_screen/widgets/order_details_item_widget.dart';
import 'controller/order_details_controller.dart';
import 'models/order_details_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:lincoln_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:lincoln_s_application1/widgets/custom_button.dart';

class OrderDetailsScreen extends GetWidget<OrderDetailsController> {
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
                    onTap: onTapArrowleft16),
                title: AppbarTitle(
                    text: "lbl_order_details".tr, margin: getMargin(left: 12))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 14, top: 27, right: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(57.00),
                                  width: getHorizontalSize(342.00),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: getPadding(top: 12),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  96.00),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .lightBlueA200)),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  96.00),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .lightBlueA200)),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  96.00),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .blue50))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Card(
                                                            clipBehavior: Clip
                                                                .antiAlias,
                                                            elevation: 0,
                                                            margin: EdgeInsets
                                                                .all(0),
                                                            color: ColorConstant
                                                                .lightBlueA200,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .circleBorder12),
                                                            child: Container(
                                                                height: getSize(
                                                                    24.00),
                                                                width: getSize(
                                                                    24.00),
                                                                padding:
                                                                    getPadding(
                                                                        left: 8,
                                                                        top: 9,
                                                                        right:
                                                                            8,
                                                                        bottom:
                                                                            9),
                                                                decoration: AppDecoration
                                                                    .fillLightblueA200
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .circleBorder12),
                                                                child: Stack(
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVector41,
                                                                          height: getVerticalSize(
                                                                              5.00),
                                                                          width: getHorizontalSize(
                                                                              7.00),
                                                                          alignment:
                                                                              Alignment.bottomRight)
                                                                    ]))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Text(
                                                                "lbl_packing"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsRegular12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            0.50)))
                                                      ]),
                                                  Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Card(
                                                            clipBehavior: Clip
                                                                .antiAlias,
                                                            elevation: 0,
                                                            margin: EdgeInsets
                                                                .all(0),
                                                            color: ColorConstant
                                                                .lightBlueA200,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .circleBorder12),
                                                            child: Container(
                                                                height: getSize(
                                                                    24.00),
                                                                width: getSize(
                                                                    24.00),
                                                                padding:
                                                                    getPadding(
                                                                        left: 8,
                                                                        top: 9,
                                                                        right:
                                                                            8,
                                                                        bottom:
                                                                            9),
                                                                decoration: AppDecoration
                                                                    .fillLightblueA200
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .circleBorder12),
                                                                child: Stack(
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVector41,
                                                                          height: getVerticalSize(
                                                                              5.00),
                                                                          width: getHorizontalSize(
                                                                              7.00),
                                                                          alignment:
                                                                              Alignment.bottomRight)
                                                                    ]))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Text(
                                                                "lbl_shipping"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsRegular12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            0.50)))
                                                      ]),
                                                  Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Card(
                                                            clipBehavior: Clip
                                                                .antiAlias,
                                                            elevation: 0,
                                                            margin: EdgeInsets
                                                                .all(0),
                                                            color: ColorConstant
                                                                .lightBlueA200,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .circleBorder12),
                                                            child: Container(
                                                                height: getSize(
                                                                    24.00),
                                                                width: getSize(
                                                                    24.00),
                                                                padding:
                                                                    getPadding(
                                                                        left: 8,
                                                                        top: 9,
                                                                        right:
                                                                            8,
                                                                        bottom:
                                                                            9),
                                                                decoration: AppDecoration
                                                                    .fillLightblueA200
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .circleBorder12),
                                                                child: Stack(
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVector41,
                                                                          height: getVerticalSize(
                                                                              5.00),
                                                                          width: getHorizontalSize(
                                                                              7.00),
                                                                          alignment:
                                                                              Alignment.bottomRight)
                                                                    ]))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Text(
                                                                "lbl_arriving"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsRegular12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            0.50)))
                                                      ]),
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgCheckmark24x24,
                                                                height: getSize(
                                                                    24.00),
                                                                width:
                                                                    getSize(
                                                                        24.00),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            13)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            20),
                                                                child: Text(
                                                                    "lbl_success"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsRegular12
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.50)))
                                                          ]))
                                                ]))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 2, top: 24),
                                  child: Text("lbl_product".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(letterSpacing: 0.50))),
                              Padding(
                                  padding: getPadding(left: 2, top: 12),
                                  child: Obx(() => ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller.orderDetailsModelObj
                                          .value.orderDetailsItemList.length,
                                      itemBuilder: (context, index) {
                                        OrderDetailsItemModel model = controller
                                            .orderDetailsModelObj
                                            .value
                                            .orderDetailsItemList[index];
                                        return OrderDetailsItemWidget(model);
                                      }))),
                              Padding(
                                  padding: getPadding(left: 2, top: 24),
                                  child: Text("msg_shipping_detail".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(letterSpacing: 0.50))),
                              Container(
                                  width: getHorizontalSize(343.00),
                                  margin: getMargin(left: 2, top: 11),
                                  padding: getPadding(
                                      left: 16, top: 19, right: 16, bottom: 19),
                                  decoration: AppDecoration.outlineBlue501
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("lbl_date_shipping".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12Indigo90087
                                                      .copyWith(
                                                          letterSpacing: 0.50)),
                                              Text("msg_january_16_202".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12Indigo900
                                                      .copyWith(
                                                          letterSpacing: 0.50))
                                            ]),
                                        Padding(
                                            padding: getPadding(top: 15),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("lbl_shipping".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12Indigo90087
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.50)),
                                                  Text("lbl_pos_reggular".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12Indigo900
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.50))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 14),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("lbl_no_resi".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12Indigo90087
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.50)),
                                                  Text("lbl_000192848573".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12Indigo900
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.50))
                                                ])),
                                        Padding(
                                            padding:
                                                getPadding(top: 15, bottom: 3),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          bottom: 18),
                                                      child: Text(
                                                          "lbl_address".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12Indigo90087
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.50))),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          160.00),
                                                      margin: getMargin(top: 5),
                                                      child: Text(
                                                          "msg_2727_new_owerr"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.right,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12Indigo900
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.50)))
                                                ]))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 2, top: 46),
                                  child: Text("lbl_payment_details".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(letterSpacing: 0.50))),
                              Container(
                                  width: getHorizontalSize(343.00),
                                  margin: getMargin(left: 1, top: 11),
                                  padding: getPadding(all: 16),
                                  decoration: AppDecoration.outlineBlue501
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 1),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("lbl_items_3".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.50)),
                                                  Text("lbl_598_86".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12Indigo900
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.50))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 16),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Text(
                                                          "lbl_shipping".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.50))),
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Text(
                                                          "lbl_40_00".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12Indigo900
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.50)))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 14),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 1),
                                                      child: Text(
                                                          "lbl_import_charges"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.50))),
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Text(
                                                          "lbl_128_00".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12Indigo900
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.50)))
                                                ])),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(311.00),
                                            margin: getMargin(top: 12),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blue50)),
                                        Padding(
                                            padding: getPadding(top: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("lbl_total_price".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsBold12Indigo900
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.50)),
                                                  Text("lbl_766_86".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsBold12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.50))
                                                ]))
                                      ])),
                              CustomButton(
                                  height: 57,
                                  width: 343,
                                  text: "lbl_notify_me".tr,
                                  margin: getMargin(left: 2, top: 29))
                            ]))))));
  }

  onTapArrowleft16() {
    Get.back();
  }
}
