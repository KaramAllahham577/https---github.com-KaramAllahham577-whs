import 'package:get/get.dart';
import 'package:untitled3/Keeper/core/constant/const.dart';

import '../../../../Keeper/controller/test_controller.dart';
import '../../../../Keeper/core/class/crud.dart';

class AddShipmentData {
  Crud curd;

  AddShipmentData(this.curd);
  final box = Get.put(StorageController());

  postData(Map<String, dynamic> body) async {
    print('ssssssssssssssssssssssssssssssssssssssssssssssssssssss');
    var response = await curd.postData(
        "http://$Ip:8000/api/managers/keeper/Add/AddShipment", body,Token);
    print(
        'ssssssssssssssswwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww');
    return response;
  }
}
