import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:http/http.dart' as http;


// const String baseUrl = 'http://10.0.2.2:8000/api';
// EquipmentFixesController equipmentFixesController = Get.put(EquipmentFixesController());

class HttpClient1 {
  var client = http.Client();
  // Future<dynamic> fetchEquipments(String api ,String headers) async {
  //   var url = Uri.parse(api);
  //   var _headers = {
  //     'Authorization': 'Bearer $headers',
  //   };
  //
  //   final response = await http.get(url, headers: _headers);
  //
  //   if (response.statusCode == 200) {
  //     // Decode the response as a Map
  //     Map<String, dynamic> jsonResponse = json.decode(response.body);
  //
  //     // Access the "equipment fixes: " key which holds List
  //     List<dynamic> equipmentFixes = jsonResponse['equipment fixes: '];
  //
  //     // Iterate over each item in the List
  //     equipmentFixes.forEach((equipmentFix) {
  //       // Assuming each item is a Map, decode it to your model ShowEquipmentFixesModel
  //       ShowEquipmentFixesModel item = ShowEquipmentFixesModel.fromJson(equipmentFix);
  //
  //       //Add the parsed item to your equipmentFixesList
  //       equipmentFixesController.equipmentFixesList.add(item);
  //     });
  //
  //   } else {
  //     throw Exception('Failed to load equipment');
  //   }
  // }


  //GET
  Future<dynamic> get(String api,String headers) async {
    var url = Uri.parse( api);
    var _headers = {
      'Authorization': 'Bearer $headers',
    };

    var response = await client.get(url, headers: _headers);
    print(response.statusCode);
    if (response.statusCode == 200) {
      var responseBody = jsonDecode(response.body);

      return responseBody;

    } else {
      print('فاشلللللللللللل');
    }
  }


 Future<dynamic> post(String api,String headers, dynamic object) async {
    var url = Uri.parse(api);
    var _payload = json.encode(object);
    var _headers = {
      'Authorization': 'Bearer $headers',
      'Content-Type': 'application/json',
      'api_key': 'ief873fj38uf38uf83u839898989',
    };

    var response = await client.post(url, body: _payload, headers: _headers);
    if (response.statusCode == 200 || response.statusCode==201) {
     var data=jsonDecode(response.body);
     return data;
    } else {
      print('تم اضافة الشحنة بنجاح');
    }
  }
//
//   ///PUT Request
//   Future<dynamic> put(String api, dynamic object) async {
//     var url = Uri.parse(baseUrl + api);
//     var _payload = json.encode(object);
//     var _headers = {
//       'Authorization': 'Bearer sfie328370428387=',
//       'Content-Type': 'application/json',
//       'api_key': 'ief873fj38uf38uf83u839898989',
//     };
//
//     var response = await client.put(url, body: _payload, headers: _headers);
//     if (response.statusCode == 200) {
//       return response.body;
//     } else {
//       //throw exception and catch it in UI
//     }
//   }
//
//   Future<dynamic> delete(String api) async {
//     var url = Uri.parse(baseUrl + api);
//     var _headers = {
//       'Authorization': 'Bearer sfie328370428387=',
//       'api_key': 'ief873fj38uf38uf83u839898989',
//     };
//
//     var response = await client.delete(url, headers: _headers);
//     if (response.statusCode == 200) {
//       return response.body;
//     } else {
//       //throw exception and catch it in UI
//     }
//   }
 }
