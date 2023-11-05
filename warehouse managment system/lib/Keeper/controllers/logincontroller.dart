import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart';
import 'package:untitled3/Keeper/controller/test_controller.dart';

import '../../General/view/screen/homepage.dart';
import '../core/constant/const.dart';
import '../view/homepage.dart';

class LoginController extends GetxController{
  bool succes = false;
  final id_controller = TextEditingController();
  final passwordcontroller = TextEditingController();
  bool hasError = false;
  bool isLoading = false;
  bool isIdValid = true;
  bool isPasswordValid = true;
  final box=Get.put(StorageController());
  Future<void> login() async {
    isLoading = true;
    update();

    try {
      var response = await post(
        Uri.parse('http://$Ip:8000/api/managers/login'),
        body: {
          "email": id_controller.text,
          'password': passwordcontroller.text,
        },
      );

      if (response.statusCode == 200) {

        succes = true;
        var data = jsonDecode(response.body);
        print(data[ 'employeeData']);
     box.storage("idBranch", data[ 'employeeData']['branch_id']);
        if (data['data'] ['role_id']==1 ||data['data'] ['role_id']==2 ) {
          Token=data['data']['token'];
          Get.to( HomePage13());
box.storage("role", data['data'] ['role_id']);
          Get.to(HomePage13());
        }else{
          Get.to(HomePageGeneral());
          box.storage("idBranch12", data[ 'employeeData']['branch_id']);
          Token=data['data']['token'];
        }
      } else {
        succes = false;
        print('login fail');
      }
    } catch (e) {
      succes = false;
      print(e.toString());
    }

    isLoading = false;
    hasError = !succes;
    update(); // Notify the UI that the login process is complete


}}