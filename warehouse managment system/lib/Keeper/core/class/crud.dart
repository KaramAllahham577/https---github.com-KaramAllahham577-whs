import 'dart:convert';

import 'package:http/http.dart' as http;

import '../constant/const.dart';
import '../function/check_internet.dart';

class Crud {

  Future postData(String linkUrl, data, String headers) async {
    print(data);
    if (await checkInternet()) {
      var response = await http.post(Uri.parse(linkUrl), body:data, headers: {
        'Authorization':
            "Bearer $Token"
      }
      );
      if (response.statusCode == 200 || response.statusCode == 201) {

        print(
            'before response body //////////////////////////////////////////');

        var responseBody = jsonDecode(response.body);

        return responseBody;
      } else {


        print(
            'before else //////////////////////////////////////////${response.statusCode}');
      }
    }
  }


  Future GetData(String linkUrl, String headers) async {
    print('before curd  get//////////////////////////////////////////');
    var response = await http.get(
      Uri.parse(linkUrl),
         headers: {'Authorization': 'Bearer $headers'},
    );
    print("after curd get //////////////////////////////////");
    if (response.statusCode == 200 || response.statusCode == 201) {

      print(
          'before response get//////////////////////////////////////////////////////');
      var responseBody = await jsonDecode(response.body);
      return responseBody;
    } else {
      print("Request failed with status: ${response.statusCode}.");
    }
  }
}
