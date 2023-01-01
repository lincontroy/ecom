import '../address_screen/widgets/address_item_widget.dart';
import 'controller/address_controller.dart';
import 'models/address_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:lincoln_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:lincoln_s_application1/widgets/custom_button.dart';

class AddressScreen extends GetWidget<AddressController> {
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
                    onTap: onTapArrowleft18),
                title: AppbarTitle(
                    text: "lbl_address".tr, margin: getMargin(left: 12))),
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, top: 17, right: 16, bottom: 17),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(() => ListView.builder(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: controller
                              .addressModelObj.value.addressItemList.length,
                          itemBuilder: (context, index) {
                            AddressItemModel model = controller
                                .addressModelObj.value.addressItemList[index];
                            return AddressItemWidget(model);
                          })),
                      CustomButton(
                          height: 57,
                          width: 343,
                          text: "lbl_add_address".tr,
                          margin: getMargin(top: 143, bottom: 5))
                    ]))));
  }

  onTapArrowleft18() {
    Get.back();
  }
}
