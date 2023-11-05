import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/equipmentInformation.dart';
import '../widgets/equipment_infirmation_card.dart';


class Equipment_Information extends StatelessWidget {
   Equipment_Information({super.key});
  final EquipmentInformationController _EquipmentInformationController =
  Get.put(EquipmentInformationController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Obx(()=>
         ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  // Get.to(Order_Products_List());
                },
                child: Equipment_Information_Card(_EquipmentInformationController.equipmentsList[index])),
            separatorBuilder: (context, index) => const SizedBox(
              height: 7.5,
            ),
            itemCount:  _EquipmentInformationController.equipmentsList.length),
      ),
    );
  }
}
