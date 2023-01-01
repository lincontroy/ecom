import 'package:lincoln_s_application1/core/app_export.dart';
import 'package:lincoln_s_application1/presentation/register_form_screen/models/register_form_model.dart';
import 'package:flutter/material.dart';

class RegisterFormController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordAgainController = TextEditingController();

  Rx<RegisterFormModel> registerFormModelObj = RegisterFormModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordAgainController.dispose();
  }
}
