import 'package:get/get.dart';
import 'package:untitled3/Keeper/core/constant/const.dart';

import '../../../../controller/test_controller.dart';
import '../../../../core/class/crud.dart';

class AddProductData {
  Crud curd;

  AddProductData(this.curd);
  final box = Get.put(StorageController());

  postData(Map<String, dynamic> body) async {
    print('ssssssssssssssssssssssssssssssssssssssssssssssssssssss');
    var response = await curd.postData(
        "http://$Ip:8000/api/managers/keeper/edit/editProduct/1", body,Token);
    print(
        'ssssssssssssssswwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww');
    return response;
  }
}
