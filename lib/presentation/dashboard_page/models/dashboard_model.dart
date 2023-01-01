import 'package:get/get.dart';
import 'slideroffer_item_model.dart';
import 'categories_item_model.dart';
import 'flashsale_item_model.dart';
import 'megasale_item_model.dart';
import 'dashboard_item_model.dart';

class DashboardModel {
  RxList<SliderofferItemModel> sliderofferItemList =
      RxList.filled(1, SliderofferItemModel());

  RxList<CategoriesItemModel> categoriesItemList =
      RxList.filled(6, CategoriesItemModel());

  RxList<FlashsaleItemModel> flashsaleItemList =
      RxList.filled(3, FlashsaleItemModel());

  RxList<MegasaleItemModel> megasaleItemList =
      RxList.filled(3, MegasaleItemModel());

  RxList<DashboardItemModel> dashboardItemList =
      RxList.filled(4, DashboardItemModel());
}
