import 'package:untitled3/Keeper/core/constant/const.dart';

import '../../../../core/class/crud.dart';

class LoginData {
  late Crud curd;

  LoginData(this.curd);

  postData(String email, String password) async {
    print('before res..............................................');
    var response = await curd.postData('http://$Ip:8000/api/managers/register',
        {'email': email, 'password': password}
    ,
        Token
    );
    print('after res..............................................');
    return response;
  }
}
