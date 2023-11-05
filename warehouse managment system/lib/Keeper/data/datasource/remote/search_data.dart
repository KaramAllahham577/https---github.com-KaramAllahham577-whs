import 'package:untitled3/Keeper/data/model/auth_model/aa.dart';

import '../../../core/class/crud.dart';

class SearchData{

  late Crud curd;

  SearchData(this.curd);
  getData()async{
   var response = await curd.GetData('https://jsonplaceholder.typicode.com/posts', "headers");
   return response;
  }
}