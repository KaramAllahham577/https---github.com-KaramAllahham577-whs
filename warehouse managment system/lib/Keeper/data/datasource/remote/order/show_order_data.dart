import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled3/Keeper/controller/test_controller.dart';
import 'package:untitled3/Keeper/core/constant/const.dart';

import '../../../../core/class/crud.dart';

class ShowOrderData {
  Crud curd;

  ShowOrderData(this.curd);
  final box =Get.put(StorageController());

  getData() async {


    var response = await curd.GetData(
        "http://$Ip:8000/api/managers/keeper/show/showOrderLists/3",
        Token);
    print("object//////////////////////////////////////////");
    return response;
  }
}
