import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled3/General/data/model/branch/show_employee_branch_general_model.dart';

import '../../data/model/categories/show_categories_model.dart';
import '../../data/remote/categroies/show_categories_data_general.dart';
import '../../data/remote/employee/show_employee_data.dart';




class ShowEmployeeBranchControllerGeneral extends GetxController {
  List<ShowEmployeeBranchGeneralModel> employeeList =<ShowEmployeeBranchGeneralModel> [];
  late bool isLoading = true;


  ShowEmployeeBranchGeneralData showEmployeeBranchGeneralData = ShowEmployeeBranchGeneralData(Get.find());
  @override
  void onInit() {

    getData();
    super.onInit();
  }
  int j=0;
  List? test;

  void getData() async {
    try {
      employeeList.clear();

      isLoading = true;
      update();
      var response = await showEmployeeBranchGeneralData.getData();
      print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
      isLoading = false;
      if (response["status code"] == 200) {

        for (var data in response["data"]) {
          employeeList.add(ShowEmployeeBranchGeneralModel.fromJson(data));

        }


        update();
      }
    } catch (e) {
      print(e);
    }
  }
}
