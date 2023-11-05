import 'package:untitled3/Keeper/core/constant/const.dart';

import '../../../../core/class/crud.dart';

class ShowCategoriesData {
  Crud curd;

  ShowCategoriesData(this.curd);

  getData() async {


    var response = await curd.GetData(
        "http://$Ip:8000/api/managers/show/RootsCats",
        Token);
    print("object//////////////////////////////////////////");
    return response;
  }
}
