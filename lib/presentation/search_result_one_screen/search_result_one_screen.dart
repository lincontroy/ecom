import 'controller/search_result_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:lincoln_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:lincoln_s_application1/widgets/custom_button.dart';
import 'package:lincoln_s_application1/widgets/custom_icon_button.dart';

class SearchResultOneScreen extends GetWidget<SearchResultOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          title: AppbarSearchview(
            hintText: "lbl_search_product".tr,
            controller: controller.searchFormController,
            margin: getMargin(
              left: 16,
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                24.00,
              ),
              width: getSize(
                24.00,
              ),
              svgPath: ImageConstant.imgSort,
              margin: getMargin(
                left: 16,
                top: 16,
                bottom: 16,
              ),
            ),
            AppbarImage(
              height: getSize(
                24.00,
              ),
              width: getSize(
                24.00,
              ),
              svgPath: ImageConstant.imgFilter,
              margin: getMargin(
                all: 16,
              ),
            ),
          ],
        ),
        body: Container(
          width: size.width,
          padding: getPadding(
            top: 11,
            bottom: 11,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  1.00,
                ),
                width: size.width,
                decoration: BoxDecoration(
                  color: ColorConstant.blue50,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 15,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 1,
                        bottom: 4,
                      ),
                      child: Text(
                        "lbl_0_result".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold12Indigo90087.copyWith(
                          letterSpacing: 0.50,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: getPadding(
                        top: 2,
                        bottom: 3,
                      ),
                      child: Text(
                        "lbl_man_shoes".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold12Indigo900.copyWith(
                          letterSpacing: 0.50,
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowdown,
                      height: getSize(
                        24.00,
                      ),
                      width: getSize(
                        24.00,
                      ),
                      margin: getMargin(
                        left: 8,
                      ),
                    ),
                  ],
                ),
              ),
              CustomIconButton(
                height: 72,
                width: 72,
                margin: getMargin(
                  top: 131,
                ),
                variant: IconButtonVariant.OutlineLightblueA2003d,
                padding: IconButtonPadding.PaddingAll28,
                child: CustomImageView(
                  svgPath: ImageConstant.imgClose72x72,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 15,
                ),
                child: Text(
                  "msg_product_not_fou".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsBold24Indigo900.copyWith(
                    letterSpacing: 0.50,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 11,
                ),
                child: Text(
                  "msg_thank_you_for_s".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular12.copyWith(
                    letterSpacing: 0.50,
                  ),
                ),
              ),
              CustomButton(
                height: 57,
                width: 343,
                text: "lbl_back_to_home".tr,
                margin: getMargin(
                  top: 16,
                  bottom: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
