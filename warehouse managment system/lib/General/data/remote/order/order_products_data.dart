import 'package:get/get.dart';
import 'package:untitled3/Keeper/core/constant/const.dart';

import '../../../../Keeper/controller/test_controller.dart';
import '../../../../Keeper/core/class/crud.dart';


class OrderProductsGeneralData {
  Crud curd;

  OrderProductsGeneralData(this.curd);
  final box = Get.put(StorageController());


  getData() async {


    var response = await curd.GetData(
        "http://$Ip:8000/api/managers/GeneralManager/show/showOrderProducts/${box.reade("IdOrder")}",
        Token);
    print("object//////////////////////////////////////////");
    return response;
  }
}
