import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/data/datasource/remote/employee/show_assistants_data.dart';
import 'package:untitled3/Keeper/data/datasource/remote/employee/show_keeper_data.dart';
import 'package:untitled3/Keeper/data/model/employee_modle/show_employee_model.dart';

import '../../core/class/crud.dart';
import '../../data/datasource/remote/categroies/show_categories_data.dart';
import '../../data/datasource/remote/employee/show_employee_data.dart';
import '../../data/model/categories/show_categories_model.dart';

class ShowEmployeeController extends GetxController {
  List<SHowEmployeeModel> employeeList = <SHowEmployeeModel>[];
  late bool isLoading = true;
  List<SHowEmployeeModel>  employeesKeeper = <SHowEmployeeModel>[];
  List<SHowEmployeeModel>  employeesAssistant = <SHowEmployeeModel>[];

  bool? isKeeper = false;
  bool? isAll = true;

  List<String> dropdownItems = ['All', 'Keeper', 'Assistant'];
  String? defaultValue;
  ShowEmployeeData showEmployeeData = ShowEmployeeData(Get.find());
  ShowKeepersData showKeepersData = ShowKeepersData(Get.find());
  ShowAssistantData showAssistantData = ShowAssistantData(Get.find());

  @override
  void onInit() {
    defaultValue = dropdownItems[0];
    getData();
    super.onInit();
  }

   getData() async {
    try {
      isLoading = true;
      update();
      var response = await showEmployeeData.getData();
      var responseKeeper = await showKeepersData.getData();
      var responseAssistant = await showAssistantData.getData();
print(responseKeeper);
      isLoading = false;
      if (
          responseKeeper["status code"] == 200 &&
          responseAssistant["status code"] == 200) {
// for(var data in response['data']['1']) {
//   employeeList.add(SHowEmployeeModel.fromJson(data));
// }

        print('All///////////////////////////////////////////');



for(var data in responseKeeper['data']) {
  employeesKeeper.add(SHowEmployeeModel.fromJson(data));
}
for(var data in responseAssistant['data']){
  employeesAssistant.add(SHowEmployeeModel.fromJson(data));}
print("................................................");
        //
        // if (responseAssistant["message"] == "no employyees") {
        //
        // }else {
        //   employeesAssistant.add(SHowEmployeeModel.fromJson(responseAssistant));
        //
        //
        //
        // }
        employeeList.addAll(employeesAssistant);
        employeeList.addAll(employeesKeeper);



        update();

    } }catch (e) {
      print(e);
    }
  }
}
