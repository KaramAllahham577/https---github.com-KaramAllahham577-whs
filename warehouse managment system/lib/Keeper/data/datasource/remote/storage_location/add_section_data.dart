import 'package:untitled3/Keeper/core/constant/const.dart';

import '../../../../core/class/crud.dart';

class AddSectionData {
  Crud curd;

  AddSectionData(this.curd);

  postData(Map<String, dynamic> body) async {
    print('ssssssssssssssssssssssssssssssssssssssssssssssssssssss');
    var response = await curd.postData(
        "http://$Ip:8000/api/managers/keeper/Add/addlocation", body,Token);
    print(
        'ssssssssssssssswwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww');
    return response;
  }
}
