import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/presentation/add_address_screen/models/add_address_model.dart';
import 'package:flutter/material.dart';

class AddAddressController extends GetxController {
  TextEditingController oldPasswordController = TextEditingController();

  TextEditingController oldPasswordOneController = TextEditingController();

  TextEditingController oldPasswordTwoController = TextEditingController();

  TextEditingController oldPasswordThreeController = TextEditingController();

  TextEditingController oldPasswordFourController = TextEditingController();

  TextEditingController oldPasswordFiveController = TextEditingController();

  TextEditingController oldPasswordSixController = TextEditingController();

  TextEditingController oldPasswordSevenController = TextEditingController();

  TextEditingController oldPasswordEightController = TextEditingController();

  Rx<AddAddressModel> addAddressModelObj = AddAddressModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    oldPasswordController.dispose();
    oldPasswordOneController.dispose();
    oldPasswordTwoController.dispose();
    oldPasswordThreeController.dispose();
    oldPasswordFourController.dispose();
    oldPasswordFiveController.dispose();
    oldPasswordSixController.dispose();
    oldPasswordSevenController.dispose();
    oldPasswordEightController.dispose();
  }
}
