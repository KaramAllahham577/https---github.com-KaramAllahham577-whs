import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/test_controller.dart';
import 'package:untitled3/Keeper/core/constant/const.dart';

import '../../../../core/class/crud.dart';

class ShowProductData {
  Crud curd;

    ShowProductData(this.curd);
  final box= Get.put(StorageController());

  getData() async {


    var response = await curd.GetData(
        "http://$Ip:8000/api/managers/show/BranchProducts/${box.reade("idBranch")}",
        Token);
    print("object//////////////////////////////////////////");
    return response;
  }
}
