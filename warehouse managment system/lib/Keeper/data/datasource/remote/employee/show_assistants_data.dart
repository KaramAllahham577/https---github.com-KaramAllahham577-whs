import 'package:get/get.dart';
import 'package:untitled3/Keeper/core/constant/const.dart';

import '../../../../controller/test_controller.dart';
import '../../../../core/class/crud.dart';

class ShowAssistantData {
  Crud curd;

  ShowAssistantData(this.curd);
  final box = Get.put(StorageController());


  getData() async {


    var response = await curd.GetData(
        "http://$Ip:8000/api/managers/show/BranchManagers/2/${box.reade('idBranch')} ",
        Token);
    print("after///////////////////////////////////////////////////////");
    return response;
  }
}
