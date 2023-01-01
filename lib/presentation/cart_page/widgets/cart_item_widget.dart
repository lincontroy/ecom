import '../controller/cart_controller.dart';
import '../models/cart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class CartItemWidget extends StatelessWidget {
  CartItemWidget(this.cartItemModelObj);

  CartItemModel cartItemModelObj;

  var controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 8.0,
        bottom: 8.0,
      ),
      padding: getPadding(
        top: 15,
        bottom: 15,
      ),
      decoration: AppDecoration.outlineBlue501.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImageproduct,
            height: getSize(
              72.00,
            ),
            width: getSize(
              72.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                5.00,
              ),
            ),
            margin: getMargin(
              top: 1,
              bottom: 1,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 1,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        150.00,
                      ),
                      margin: getMargin(
                        top: 3,
                      ),
                      child: Text(
                        "msg_nike_air_zoom_p".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold12Indigo900.copyWith(
                          letterSpacing: 0.50,
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgLoveicon,
                      height: getSize(
                        24.00,
                      ),
                      width: getSize(
                        24.00,
                      ),
                      margin: getMargin(
                        left: 20,
                        bottom: 7,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgTrash24x24,
                      height: getSize(
                        24.00,
                      ),
                      width: getSize(
                        24.00,
                      ),
                      margin: getMargin(
                        left: 8,
                        bottom: 7,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    top: 21,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 1,
                        ),
                        child: Text(
                          "lbl_299_43".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold12.copyWith(
                            letterSpacing: 0.50,
                          ),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgFolder,
                        height: getVerticalSize(
                          20.00,
                        ),
                        width: getHorizontalSize(
                          33.00,
                        ),
                        margin: getMargin(
                          left: 67,
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          20.00,
                        ),
                        width: getHorizontalSize(
                          41.00,
                        ),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: getVerticalSize(
                                  20.00,
                                ),
                                width: getHorizontalSize(
                                  41.00,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.blue50,
                                  border: Border.all(
                                    color: ColorConstant.blue50,
                                    width: getHorizontalSize(
                                      1.00,
                                    ),
                                    strokeAlign: StrokeAlign.center,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: getPadding(
                                  right: 17,
                                ),
                                child: Text(
                                  "lbl_1".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular12Indigo90087
                                      .copyWith(
                                    letterSpacing: 0.06,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgPlus,
                        height: getVerticalSize(
                          20.00,
                        ),
                        width: getHorizontalSize(
                          33.00,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
