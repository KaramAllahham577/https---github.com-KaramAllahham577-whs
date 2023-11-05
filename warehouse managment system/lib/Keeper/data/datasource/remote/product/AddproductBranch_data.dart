import 'package:get/get.dart';
import 'package:untitled3/Keeper/core/constant/const.dart';

import '../../../../controller/test_controller.dart';
import '../../../../core/class/crud.dart';

class AddProductBranchData {
  Crud curd;

  AddProductBranchData(this.curd);

  final box = Get.put(StorageController());

  postData(Map<String, dynamic> body) async {
    var response;
    print('ssssssssssssssssssssssssssssssssssssssssssssssssssssss');
    if (box.reade("role") == 1) {
       response = await curd.postData(
          "http://$Ip:8000/api/managers/keeper/Add/storeProduct", body, Token);
    }
    else {
       response = await curd.postData(
          "http://$Ip:8000/api/managers/assistant/Add/storeProduct", body, Token);
    }


    return response;
  }

}