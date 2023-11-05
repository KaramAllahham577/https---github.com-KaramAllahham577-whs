import 'package:untitled3/Keeper/core/constant/const.dart';
import 'package:untitled3/Keeper/data/model/auth_model/aa.dart';

import '../../../core/class/crud.dart';


class InnerOrProductData{

  late Crud curd;

  InnerOrProductData(this.curd);
  getData()async{
    var response = await curd.GetData('http://192.168.1.104:8000/api/managers/show/CHcategories/11/1', Token);
    return response;
  }
}