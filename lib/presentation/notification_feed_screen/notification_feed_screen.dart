import '../notification_feed_screen/widgets/listnewproduct_item_widget.dart';
import 'controller/notification_feed_controller.dart';
import 'models/listnewproduct_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:lincoln_s_application1/widgets/app_bar/custom_app_bar.dart';

class NotificationFeedScreen extends GetWidget<NotificationFeedController> {
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
                    margin: getMargin(left: 16, top: 15, bottom: 16),
                    onTap: onTapArrowleft6),
                title: AppbarTitle(
                    text: "lbl_feed".tr, margin: getMargin(left: 12))),
            body: Padding(
                padding: getPadding(top: 11),
                child: Obx(() => ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.notificationFeedModelObj.value
                        .listnewproductItemList.length,
                    itemBuilder: (context, index) {
                      ListnewproductItemModel model = controller
                          .notificationFeedModelObj
                          .value
                          .listnewproductItemList[index];
                      return ListnewproductItemWidget(model);
                    })))));
  }

  onTapArrowleft6() {
    Get.back();
  }
}
