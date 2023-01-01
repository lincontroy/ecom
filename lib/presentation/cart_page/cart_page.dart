import '../cart_page/widgets/cart_item_widget.dart';
import 'controller/cart_controller.dart';
import 'models/cart_item_model.dart';
import 'models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:lincoln_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:lincoln_s_application1/widgets/custom_button.dart';
import 'package:lincoln_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CartPage extends StatelessWidget {
  CartController controller = Get.put(CartController(CartModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                title: AppbarTitle(
                    text: "lbl_your_cart".tr, margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgNotification,
                      margin:
                          getMargin(left: 13, top: 15, right: 13, bottom: 16),
                      onTap: onTapNotification2)
                ]),
            body: Container(
                width: size.width,
                padding: getPadding(left: 15, top: 7, right: 15, bottom: 7),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 1, right: 1),
                          child: Obx(() => ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller
                                  .cartModelObj.value.cartItemList.length,
                              itemBuilder: (context, index) {
                                CartItemModel model = controller
                                    .cartModelObj.value.cartItemList[index];
                                return CartItemWidget(model);
                              }))),
                      Padding(
                          padding: getPadding(top: 52),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomTextFormField(
                                    width: 256,
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.coponcodefieldController,
                                    hintText: "msg_enter_cupon_cod".tr,
                                    padding: TextFormFieldPadding.PaddingT17,
                                    textInputAction: TextInputAction.done),
                                CustomButton(
                                    height: 56,
                                    width: 87,
                                    text: "lbl_apply".tr,
                                    variant: ButtonVariant.FillLightblueA200,
                                    shape: ButtonShape.CustomBorderLR5,
                                    fontStyle: ButtonFontStyle.PoppinsBold12)
                              ])),
                      Container(
                          width: getHorizontalSize(343.00),
                          margin: getMargin(top: 16, right: 2),
                          padding: getPadding(all: 16),
                          decoration: AppDecoration.outlineBlue501.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_items_3".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12
                                                  .copyWith(
                                                      letterSpacing: 0.50)),
                                          Text("lbl_598_86".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12Indigo900
                                                  .copyWith(
                                                      letterSpacing: 0.50))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("lbl_shipping".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12
                                                      .copyWith(
                                                          letterSpacing:
                                                              0.50))),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("lbl_40_00".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12Indigo900
                                                      .copyWith(
                                                          letterSpacing: 0.50)))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text(
                                                  "lbl_import_charges".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12
                                                      .copyWith(
                                                          letterSpacing:
                                                              0.50))),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("lbl_128_00".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12Indigo900
                                                      .copyWith(
                                                          letterSpacing: 0.50)))
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
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_total_price".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsBold12Indigo900
                                                  .copyWith(
                                                      letterSpacing: 0.50)),
                                          Text("lbl_766_86".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtPoppinsBold12
                                                  .copyWith(
                                                      letterSpacing: 0.50))
                                        ]))
                              ])),
                      CustomButton(
                          height: 57,
                          width: 343,
                          text: "lbl_check_out".tr,
                          margin: getMargin(top: 16, bottom: 8),
                          onTap: onTapCheckout)
                    ]))));
  }

  onTapCheckout() {
    Get.toNamed(AppRoutes.shipToScreen);
  }

  onTapNotification2() {
    Get.toNamed(AppRoutes.notificationOneScreen);
  }
}
