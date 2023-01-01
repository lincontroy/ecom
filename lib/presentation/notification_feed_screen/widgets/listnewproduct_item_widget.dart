import '../controller/notification_feed_controller.dart';
import '../models/listnewproduct_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListnewproductItemWidget extends StatelessWidget {
  ListnewproductItemWidget(this.listnewproductItemModelObj);

  ListnewproductItemModel listnewproductItemModelObj;

  var controller = Get.find<NotificationFeedController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      padding: getPadding(
        all: 16,
      ),
      decoration: AppDecoration.fillWhiteA700,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgProductimage,
            height: getSize(
              48.00,
            ),
            width: getSize(
              48.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                5.00,
              ),
            ),
            margin: getMargin(
              bottom: 40,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              right: 13,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_new_product".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsBold14Indigo900.copyWith(
                    letterSpacing: 0.50,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    269.00,
                  ),
                  margin: getMargin(
                    top: 10,
                  ),
                  child: Text(
                    "msg_nike_air_zoom_p2".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular12.copyWith(
                      letterSpacing: 0.50,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                  ),
                  child: Text(
                    "msg_june_3_2015_5".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular10Indigo900.copyWith(
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
