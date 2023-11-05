import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../controller/test_controller.dart';
import '../../../../core/class/crud.dart';
import '../../../../core/constant/const.dart';

class ShowBranchData {
  Crud curd;

  ShowBranchData(this.curd);
  final box = Get.put(StorageController());
  getData() async {
    box.storage('idBranch', 5);

    var response = await curd.GetData(
        "http://$Ip:8000/api/managers/show/branches",Token
    );
    print("after///////////////////////////////////////////////////////");
    return response;
  }
}
