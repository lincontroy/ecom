import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/presentation/change_password_screen/models/change_password_model.dart';
import 'package:flutter/material.dart';

class ChangePasswordController extends GetxController {
  TextEditingController oldPasswordOneController = TextEditingController();

  TextEditingController newPasswordOneController = TextEditingController();

  TextEditingController newPasswordAgainOneController = TextEditingController();

  Rx<ChangePasswordModel> changePasswordModelObj = ChangePasswordModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    oldPasswordOneController.dispose();
    newPasswordOneController.dispose();
    newPasswordAgainOneController.dispose();
  }
}
