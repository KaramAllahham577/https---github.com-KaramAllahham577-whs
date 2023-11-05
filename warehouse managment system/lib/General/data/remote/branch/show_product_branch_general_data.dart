import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../Keeper/controller/test_controller.dart';
import '../../../../Keeper/core/class/crud.dart';
import '../../../../Keeper/core/constant/const.dart';



class ShowProductBranchDataGeneral {
  Crud curd;

  ShowProductBranchDataGeneral(this.curd);
  final box = Get.put(StorageController());
  getData() async {


    var response = await curd.GetData(
        "http://$Ip:8000/api/managers/show/BranchProducts/${box.reade("idBranch12")}",Token
    );
    print("after///////////////////////////////////////////////////////");
    return response;
  }
}
