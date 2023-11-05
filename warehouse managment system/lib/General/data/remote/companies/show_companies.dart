import 'package:untitled3/Keeper/core/constant/const.dart';

import '../../../../Keeper/core/class/crud.dart';


class ShowCompaniesGeneral {
  Crud curd;

  ShowCompaniesGeneral(this.curd);

  getData() async {


    var response = await curd.GetData(
        "http://$Ip:8000/api/managers/show/ProducingCompanies",
        Token);
    print("object//////////////////////////////////////////");
    return response;
  }
}
