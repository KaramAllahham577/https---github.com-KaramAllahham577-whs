import 'dart:convert';

import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:untitled3/Keeper/core/constant/const.dart';

import '../models/super_Equipments_fixes_model.dart';
import '../views1/widgets/equipment_card.dart';
class EquipmentFixesController extends GetxController {
  SuperEquipmentFixesModel? equipmentFixesModel;
  @override
  RxBool loading = false.obs;
  var equipmentId = equipmentCardStorage.read('equipmentId');

  void onInit() {
    super.onInit();
    fetchEquipmentsFixes();
  }

  void fetchEquipmentsFixes() async {
    loading(true);

    var uri = Uri.parse('http://$Ip:8000/api/managers/show/equipmentFixes/$equipmentId');
    var client = http.Client();
    var _headers = {
      'Authorization': 'Bearer $Token',
    };

    var response = await client.get(uri, headers: _headers);
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      equipmentFixesModel = SuperEquipmentFixesModel.fromJson(jsonResponse);
      print(equipmentId);
      print(response.body);
    } else {
      // Handle error (e.g., show an error message or retry the request)
      print('Error: ${response.statusCode}');
    }

    loading(false);
    client.close();
  }
}
