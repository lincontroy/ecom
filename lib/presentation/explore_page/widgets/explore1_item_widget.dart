import '../controller/explore_controller.dart';
import '../models/explore1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Explore1ItemWidget extends StatelessWidget {
  Explore1ItemWidget(this.explore1ItemModelObj);

  Explore1ItemModel explore1ItemModelObj;

  var controller = Get.find<ExploreController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 9.955017,
        bottom: 9.955017,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              bottom: 11,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 70,
                  width: 70,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgClock,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                  ),
                  child: Text(
                    "lbl_dress".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular10.copyWith(
                      letterSpacing: 0.50,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 70,
                width: 70,
                child: CustomImageView(
                  svgPath: ImageConstant.imgTicket70x70,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  41.00,
                ),
                margin: getMargin(
                  top: 12,
                ),
                child: Text(
                  "lbl_woman_t_shirt".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtPoppinsRegular10.copyWith(
                    letterSpacing: 0.50,
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 70,
                width: 70,
                child: CustomImageView(
                  svgPath: ImageConstant.imgWomanpantsicon,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  41.00,
                ),
                margin: getMargin(
                  top: 12,
                ),
                child: Text(
                  "lbl_woman_pants".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtPoppinsRegular10.copyWith(
                    letterSpacing: 0.50,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: getPadding(
              bottom: 11,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 70,
                  width: 70,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgTrash1,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 7,
                  ),
                  child: Text(
                    "lbl_skirt".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular10.copyWith(
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
