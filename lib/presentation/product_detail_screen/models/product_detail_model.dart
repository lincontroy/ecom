import 'package:get/get.dart';
import 'slider_item_model.dart';
import 'sizes_item_model.dart';
import 'recomended_item_model.dart';

class ProductDetailModel {
  RxList<SliderItemModel> sliderItemList = RxList.filled(1, SliderItemModel());

  RxList<SizesItemModel> sizesItemList = RxList.filled(6, SizesItemModel());

  RxList<RecomendedItemModel> recomendedItemList =
      RxList.filled(3, RecomendedItemModel());
}
