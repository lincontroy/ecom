import 'package:get/get.dart';
import 'order_details_item_model.dart';

class OrderDetailsModel {
  RxList<OrderDetailsItemModel> orderDetailsItemList =
      RxList.filled(2, OrderDetailsItemModel());
}
