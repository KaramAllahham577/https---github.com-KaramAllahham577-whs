import 'package:untitled3/Keeper/core/constant/const.dart';

import '../../../../Keeper/core/class/crud.dart';



class AllSectionGeneralData {
  Crud curd;

  AllSectionGeneralData(this.curd);

  getData() async {


    var response = await curd.GetData(
        "http://$Ip:8000/managers/show/mainSections",
        Token);
    print("object//////////////////////////////////////////");
    return response;
  }
}
