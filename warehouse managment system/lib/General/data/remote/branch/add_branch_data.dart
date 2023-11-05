

import 'package:untitled3/Keeper/core/constant/const.dart';

import '../../../../Keeper/core/class/crud.dart';

class AddBranchData {
  Crud curd;

  AddBranchData(this.curd);

  postData(Map<String, dynamic> body) async {
    print('ssssssssssssssssssssssssssssssssssssssssssssssssssssss');
    var response = await curd.postData(
        "http://$Ip:8000/api/managers/GeneralManager/Add/Branch", body,Token);
    print(
        'ssssssssssssssswwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww');
    return response;
  }
}
