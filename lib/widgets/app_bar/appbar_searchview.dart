import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class AppbarSearchview extends StatelessWidget {
  AppbarSearchview({this.hintText, this.controller, this.margin});

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 263,
        focusNode: FocusNode(),
        controller: controller,
        hintText: hintText,
        prefix: Container(
          margin: getMargin(
            left: 16,
            top: 15,
            right: 8,
            bottom: 15,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgSearchLightBlueA200,
          ),
        ),
        prefixConstraints: BoxConstraints(
          minWidth: getSize(
            16.00,
          ),
          minHeight: getSize(
            16.00,
          ),
        ),
      ),
    );
  }
}
