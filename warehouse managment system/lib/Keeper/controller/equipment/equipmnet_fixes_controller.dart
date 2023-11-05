import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/data/datasource/remote/branch/branch-details-data.dart';
import 'package:untitled3/Keeper/data/model/branch/branch_details_model.dart';
import 'package:untitled3/Keeper/models/show_equipment_model.dart';

import '../../core/class/crud.dart';
import '../../data/datasource/remote/branch/show_branch_data.dart';
import '../../data/datasource/remote/categroies/show_categories_data.dart';
import '../../data/datasource/remote/equipment/equipment_fixes_data.dart';
import '../../data/model/branch/show_bracnh_model.dart';
import '../../data/model/categories/show_categories_model.dart';
import '../../data/model/equipment/equipment_fixes_model.dart';

class ShowEquipmentFixesController extends GetxController {

  late bool isLoading = true;

  ShowEquipmentFixesData showEquipmentFixesData= ShowEquipmentFixesData(Get.find());
  final Rx<EquipmentFixesModel?> equipmentList=
  Rx<EquipmentFixesModel?>(null);

  @override
  void onInit() {
    getData();
    update();
    super.onInit();
  }

  void getData() async {
    try {
      isLoading = true;
      update();
      var response = await showEquipmentFixesData.getData();
      print(
          "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
      isLoading = false;
      update();
      print(isLoading);
      print(response);
      if (true) {
        print(
            'before for//////////////////////////////////////////////////////////////');

          equipmentList.value=EquipmentFixesModel.fromJson(response);


        print(equipmentList);

        update();
      }
    } catch (e) {
      print(e);
    }
  }
}
