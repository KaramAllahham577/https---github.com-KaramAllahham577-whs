import 'package:untitled3/Keeper/core/class/crud.dart';
import 'package:untitled3/Keeper/data/model/auth_model/aa.dart';

class RegisterData{
 late Crud curd;

 RegisterData(this.curd);
 postData(Map<String,dynamic> body)async{
var   response=await curd.postData("http://192.168.1.102:8000/api/managers/register", body, "headers");
return response;
 }
}