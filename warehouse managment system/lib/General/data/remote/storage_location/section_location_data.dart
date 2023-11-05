import 'package:get/get.dart';
import 'package:untitled3/Keeper/core/constant/const.dart';

import '../../../../Keeper/controller/test_controller.dart';
import '../../../../Keeper/core/class/crud.dart';



class SectionLocationGeneralData {
  Crud curd;

  SectionLocationGeneralData(this.curd);
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
