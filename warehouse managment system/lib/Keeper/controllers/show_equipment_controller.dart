import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:untitled3/Keeper/controller/test_controller.dart';

import '../core/constant/const.dart';
import '../models/show_equipment_model.dart';
import '../views/karam/base_client.dart';

class ShowEquipmentController extends GetxController {
  ShowEquipmentModel equipments = Get.put(ShowEquipmentModel());
  RxBool loading = false.obs;

  var isLoading = true.obs;
  var equipmentsList = <ShowEquipmentModel>[].obs;

  HttpClient1 fetch_equipments = HttpClient1();

  @override
  void onInit() {
    super.onInit();
    fetchEquipments();
  }
  final box =Get.put(StorageController());

  void fetchEquipments() async {
    loading(true);

    print(box.reade("idBranch"));
    var uri = Uri.parse('http://$Ip:8000/api/managers/show/equipment/${box.reade("idBranch")}');
    var client = http.Client();
    var _headers = {
      'Authorization': 'Bearer $Token',
    };

    var response = await client.get(uri, headers: _headers);


    if (response.statusCode == 200) {

      var jsonResponse = json.decode(response.body);
      print(jsonResponse);
      // if(jsonResponse['message']=="there is no equipments in this branch"){
      //   print(";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;");
      //   loading(false);
      //
      // }else {
        List<dynamic> equipmentList = jsonResponse as List<dynamic>;
        equipmentsList.value = equipmentList
            .map((item) => ShowEquipmentModel.fromJson(item))
            .toList();
        loading(false);
        print(response.body);
      } else {

      print('Error: ${response.statusCode}');
    }

    loading(false);
    client.close();
  }
}
