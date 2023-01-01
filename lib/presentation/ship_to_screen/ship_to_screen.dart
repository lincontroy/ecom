import '../ship_to_screen/widgets/ship_to_item_widget.dart';
import 'controller/ship_to_controller.dart';
import 'models/ship_to_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:lincoln_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:lincoln_s_application1/widgets/custom_button.dart';

class ShipToScreen extends GetWidget<ShipToController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getVerticalSize(28.00),
                    width: getHorizontalSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 14),
                    onTap: onTapArrowleft10),
                title: AppbarTitle(
                    text: "lbl_ship_to".tr, margin: getMargin(left: 12)),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(28.00),
                      width: getHorizontalSize(24.00),
                      svgPath: ImageConstant.imgPlus28x24,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 14))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 4, right: 16, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Obx(() => ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller.shipToModelObj.value
                                      .shipToItemList.length,
                                  itemBuilder: (context, index) {
                                    ShipToItemModel model = controller
                                        .shipToModelObj
                                        .value
                                        .shipToItemList[index];
                                    return ShipToItemWidget(model);
                                  })),
                              CustomButton(
                                  height: 57,
                                  width: 343,
                                  text: "lbl_next".tr,
                                  margin: getMargin(top: 47),
                                  onTap: onTapNext)
                            ]))))));
  }

  onTapNext() {
    Get.toNamed(AppRoutes.paymentMethodScreen);
  }

  onTapArrowleft10() {
    Get.back();
  }
}
