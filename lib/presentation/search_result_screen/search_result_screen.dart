import '../search_result_screen/widgets/search_result_item_widget.dart';
import 'controller/search_result_controller.dart';
import 'models/search_result_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:lincoln_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:lincoln_s_application1/widgets/custom_search_view.dart';

class SearchResultScreen extends GetWidget<SearchResultController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                title: CustomSearchView(
                    width: 263,
                    focusNode: FocusNode(),
                    controller: controller.searchController,
                    hintText: "lbl_nike_air_max".tr,
                    margin: getMargin(left: 16),
                    fontStyle: SearchViewFontStyle.PoppinsBold12,
                    prefix: Container(
                        margin:
                            getMargin(left: 16, top: 12, right: 8, bottom: 14),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgSearchLightBlueA200)),
                    prefixConstraints: BoxConstraints(
                        minWidth: getSize(16.00), minHeight: getSize(16.00))),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgSort,
                      margin: getMargin(left: 16, top: 16, bottom: 16),
                      onTap: onTapSort),
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgFilter,
                      margin: getMargin(all: 16),
                      onTap: onTapFilter)
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 11, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  decoration: BoxDecoration(
                                      color: ColorConstant.blue50)),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 15, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 1, bottom: 4),
                                            child: Text("lbl_145_result".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold12Indigo90087
                                                    .copyWith(
                                                        letterSpacing: 0.50))),
                                        Spacer(),
                                        Padding(
                                            padding:
                                                getPadding(top: 2, bottom: 3),
                                            child: Text("lbl_man_shoes".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold12Indigo900
                                                    .copyWith(
                                                        letterSpacing: 0.50))),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgArrowdown,
                                            height: getSize(24.00),
                                            width: getSize(24.00),
                                            margin: getMargin(left: 8))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 16, right: 16),
                                  child: Obx(() => GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent:
                                                  getVerticalSize(283.00),
                                              crossAxisCount: 2,
                                              mainAxisSpacing:
                                                  getHorizontalSize(13.00),
                                              crossAxisSpacing:
                                                  getHorizontalSize(13.00)),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: controller.searchResultModelObj
                                          .value.searchResultItemList.length,
                                      itemBuilder: (context, index) {
                                        SearchResultItemModel model = controller
                                            .searchResultModelObj
                                            .value
                                            .searchResultItemList[index];
                                        return SearchResultItemWidget(model);
                                      })))
                            ]))))));
  }

  onTapSort() {
    Get.toNamed(AppRoutes.sortByScreen);
  }

  onTapFilter() {
    Get.toNamed(AppRoutes.filterScreen);
  }
}
