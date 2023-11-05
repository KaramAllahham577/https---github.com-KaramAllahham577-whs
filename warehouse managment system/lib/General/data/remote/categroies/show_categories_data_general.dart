import 'package:untitled3/Keeper/core/constant/const.dart';

import '../../../../Keeper/core/class/crud.dart';


class ShowCategoriesDataGeneral {
  Crud curd;

  ShowCategoriesDataGeneral(this.curd);

  getData() async {


    var response = await curd.GetData(
        "http://$Ip:8000/api/managers/GeneralManager/show/RootsCats",
        Token);
    print("object//////////////////////////////////////////");
    return response;
  }
}
