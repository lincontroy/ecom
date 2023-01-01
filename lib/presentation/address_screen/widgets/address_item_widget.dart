import '../controller/address_controller.dart';
import '../models/address_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class AddressItemWidget extends StatelessWidget {
  AddressItemWidget(this.addressItemModelObj);

  AddressItemModel addressItemModelObj;

  var controller = Get.find<AddressController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 9.0,
        bottom: 9.0,
      ),
      padding: getPadding(
        left: 24,
        top: 22,
        right: 24,
        bottom: 22,
      ),
      decoration: AppDecoration.outlineLightblueA200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_priscekila".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsBold14Indigo900.copyWith(
              letterSpacing: 0.50,
            ),
          ),
          Container(
            width: getHorizontalSize(
              264.00,
            ),
            margin: getMargin(
              top: 22,
            ),
            child: Text(
              "msg_3711_spring_hil".tr,
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsRegular12.copyWith(
                letterSpacing: 0.50,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 24,
            ),
            child: Text(
              "lbl_99_1234567890".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsRegular12.copyWith(
                letterSpacing: 0.50,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 19,
              bottom: 3,
            ),
            child: Row(
              children: [
                Text(
                  "lbl_edit".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsBold14LightblueA200.copyWith(
                    letterSpacing: 0.50,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 32,
                  ),
                  child: Text(
                    "lbl_delete".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsBold14Pink300.copyWith(
                      letterSpacing: 0.50,
                    ),
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
