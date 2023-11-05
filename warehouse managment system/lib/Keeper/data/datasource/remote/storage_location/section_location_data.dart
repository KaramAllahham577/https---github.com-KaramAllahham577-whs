import 'package:get/get.dart';
import 'package:untitled3/Keeper/core/constant/const.dart';

import '../../../../controller/test_controller.dart';
import '../../../../core/class/crud.dart';

class SectionLocationData {
  Crud curd;

  SectionLocationData(this.curd);
  final box=Get.put(StorageController());
  getData() async {

print(".....................................................${box.reade('sec')}");
    var response = await curd.GetData(

        "http://$Ip:8000/api/managers/show/sectionLocation/${box.reade("sec")}",
        Token);
    print("object//////////////////////////////////////////");
    return response;
  }
}
