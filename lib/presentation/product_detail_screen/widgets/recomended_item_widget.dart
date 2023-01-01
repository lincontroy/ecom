import '../controller/product_detail_controller.dart';
import '../models/recomended_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class RecomendedItemWidget extends StatelessWidget {
  RecomendedItemWidget(this.recomendedItemModelObj);

  RecomendedItemModel recomendedItemModelObj;

  var controller = Get.find<ProductDetailController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 16,
          ),
          padding: getPadding(
            all: 16,
          ),
          decoration: AppDecoration.outlineBlue501.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgProductimage,
                height: getSize(
                  109.00,
                ),
                width: getSize(
                  109.00,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    5.00,
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  105.00,
                ),
                margin: getMargin(
                  top: 11,
                ),
                child: Text(
                  "msg_fs_nike_air_m".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsBold12Indigo900.copyWith(
                    letterSpacing: 0.50,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 14,
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
              Padding(
                padding: getPadding(
                  top: 9,
                ),
                child: Row(
                  children: [
                    Text(
                      "lbl_534_33".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular10.copyWith(
                        letterSpacing: 0.50,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 8,
                      ),
                      child: Text(
                        "lbl_24_off".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold10Pink300.copyWith(
                          letterSpacing: 0.50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
