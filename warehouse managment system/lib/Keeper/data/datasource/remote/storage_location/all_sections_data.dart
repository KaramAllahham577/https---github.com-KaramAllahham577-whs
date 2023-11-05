import 'package:untitled3/Keeper/core/constant/const.dart';

import '../../../../core/class/crud.dart';

class AllSectionData {
  Crud curd;

  AllSectionData(this.curd);

  getData() async {


    var response = await curd.GetData(
        "http://$Ip:8000/api/managers/show/mainSections",
        Token);
    print("object//////////////////////////////////////////");
    return response;
  }
}
