import '../models/buyingformate_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lincoln_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class BuyingformateItemWidget extends StatelessWidget {
  BuyingformateItemWidget(this.buyingformateItemModelObj);

  BuyingformateItemModel buyingformateItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: getPadding(
          right: 5,
          bottom: 5,
        ),
        child: ChoiceChip(
          label: Text(
            buyingformateItemModelObj.auctionTxt.value,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: buyingformateItemModelObj.isSelected.value
                  ? ColorConstant.lightBlueA200
                  : ColorConstant.blueGray300,
              fontSize: getFontSize(
                12,
              ),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
          selected: buyingformateItemModelObj.isSelected.value,
          backgroundColor: Colors.transparent,
          selectedColor: ColorConstant.lightBlueA20019,
          shape: buyingformateItemModelObj.isSelected.value
              ? RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      5.00,
                    ),
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide(
                    color: ColorConstant.blue50,
                    width: getHorizontalSize(
                      1.00,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      5.00,
                    ),
                  ),
                ),
          onSelected: (value) {
            buyingformateItemModelObj.isSelected.value = value;
          },
        ),
      ),
    );
  }
}
