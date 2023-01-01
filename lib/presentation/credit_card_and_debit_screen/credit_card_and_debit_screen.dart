import '../credit_card_and_debit_screen/widgets/listvolume_item_widget.dart';
import 'controller/credit_card_and_debit_controller.dart';
import 'models/listvolume_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:lincoln_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:lincoln_s_application1/widgets/custom_button.dart';

class CreditCardAndDebitScreen extends GetWidget<CreditCardAndDebitController> {
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
                    margin: getMargin(left: 16, top: 16, bottom: 15),
                    onTap: onTapArrowleft20),
                title: AppbarTitle(
                    text: "msg_credit_card_and".tr,
                    margin: getMargin(left: 12))),
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, top: 8, right: 16, bottom: 8),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(() => ListView.builder(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: controller.creditCardAndDebitModelObj.value
                              .listvolumeItemList.length,
                          itemBuilder: (context, index) {
                            ListvolumeItemModel model = controller
                                .creditCardAndDebitModelObj
                                .value
                                .listvolumeItemList[index];
                            return ListvolumeItemWidget(model,
                                onTapCreditCard: onTapCreditCard);
                          })),
                      CustomButton(
                          height: 57,
                          width: 343,
                          text: "lbl_add_card".tr,
                          margin: getMargin(top: 193, bottom: 5),
                          onTap: onTapAddcard)
                    ]))));
  }

  onTapCreditCard() {
    Get.toNamed(AppRoutes.lailyfaFebrinaCardScreen);
  }

  onTapAddcard() {
    Get.toNamed(AppRoutes.addCardScreen);
  }

  onTapArrowleft20() {
    Get.back();
  }
}
