import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/General/view/screen/homepage.dart';
import 'package:untitled3/Keeper/view/homepage.dart';

import '../../core/function/check_internet.dart';
import '../../data/datasource/remote/auth_data/login_data.dart';
import '../../view/screen/home/home_page.dart';

class LoginController1 extends GetxController {
  late bool isManager;
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> formState = GlobalKey();
  bool isLoading = false;

  bool check = false;

  LoginData loginData = LoginData(Get.find());

  postData() async {
if(formState.currentState!.validate()){



    try {
      var response = await loginData.postData(email.text, password.text);

      isLoading = true;
      update();


    } catch (e) {
      isLoading = false;
      update();

      Get.snackbar(
        snackPosition: SnackPosition.TOP,
        'Error',
        e.toString(),
        leftBarIndicatorColor: Colors.black,
        duration: const Duration(seconds: 4),
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
    update();
  }
  }



  bool isVisible = true;

  void change() {
    isVisible = !isVisible;

    update();
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
























}
