import '../controller/explore_controller.dart';
import '../models/explore_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ExploreItemWidget extends StatelessWidget {
  ExploreItemWidget(this.exploreItemModelObj);

  ExploreItemModel exploreItemModelObj;

  var controller = Get.find<ExploreController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomIconButton(
          height: 70,
          width: 70,
          child: CustomImageView(
            svgPath: ImageConstant.imgArrowdownLightBlueA200,
          ),
        ),
        Padding(
          padding: getPadding(
            top: 7,
          ),
          child: Text(
            "lbl_man_shirt".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsRegular10.copyWith(
              letterSpacing: 0.50,
            ),
          ),
        ),
      ],
    );
  }
}
