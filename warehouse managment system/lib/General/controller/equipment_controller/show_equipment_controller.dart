import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:untitled3/Keeper/controller/test_controller.dart';

import '../../../Keeper/core/constant/const.dart';
import '../../../Keeper/models/show_equipment_model.dart';
import '../../../Keeper/views/karam/base_client.dart';
import '../../data/model/equipment/show_equipment_general_model.dart';


class ShowEquipmentGeneralController extends GetxController {
  ShowEquipmentModel equipments = Get.put(ShowEquipmentModel());
  RxBool loading = false.obs;

  var isLoading = true.obs;
  List<ShowEquipmentsGeneralModel> equipmentsList = <ShowEquipmentsGeneralModel>[];

  HttpClient1 fetch_equipments = HttpClient1();

  @override
  void onInit() {
    super.onInit();
    fetchEquipments();
  }
  final box =Get.put(StorageController());

  void fetchEquipments() async {
    loading(true);

    var uri = Uri.parse('http://$Ip:8000/api/managers/GeneralManager/show/equipments?get_by=branch&branch_id=1');
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
    for(var data in jsonResponse['data']){
      equipmentsList.add(ShowEquipmentsGeneralModel.fromJson(data));
    }
        loading(false);
        print(response.body);
      } else {

      print('Error: ${response.statusCode}');
    }

    loading(false);
    update();
    client.close();
  }
}
