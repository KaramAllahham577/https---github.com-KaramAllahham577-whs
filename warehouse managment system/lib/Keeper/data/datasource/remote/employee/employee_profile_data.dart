import 'package:get/get.dart';
import 'package:untitled3/Keeper/core/constant/const.dart';

import '../../../../controller/test_controller.dart';
import '../../../../core/class/crud.dart';

class EmployeeProfileData {
  Crud curd;

  final box = Get.put(StorageController());

  EmployeeProfileData({required this.curd,});

  getData() async {

    var response = await curd.GetData(
        "http://$Ip:8000/api/managers/keeper/show/EmployeesDetails/${box.reade("idEmp")} ",
        Token);
    print("after///////////////////////////////////////////////////////");
    return response;
  }
}
