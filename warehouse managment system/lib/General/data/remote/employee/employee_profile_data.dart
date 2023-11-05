import 'package:get/get.dart';
import 'package:untitled3/Keeper/core/constant/const.dart';

import '../../../../Keeper/controller/test_controller.dart';
import '../../../../Keeper/core/class/crud.dart';



class EmployeeProfileDataGeneral {
  Crud curd;

  final box = Get.put(StorageController());

  EmployeeProfileDataGeneral({required this.curd,});

  getData() async {

    var response = await curd.GetData(
        "http://$Ip:8000/api/managers/GeneralManager/show/EmployeesDetails/${box.reade("idEmpG")} ",
        Token);
    print("after///////////////////////////////////////////////////////");
    return response;
  }
}
