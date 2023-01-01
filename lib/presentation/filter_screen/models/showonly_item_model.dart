import 'package:get/get.dart';

class ShowonlyItemModel {
  Rx<String> returnsAcceptedOneTxt = Rx('"Returns Accepted"');

  RxBool isSelected = false.obs;
}
