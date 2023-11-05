import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/equipment/equipmnet_fixes_controller.dart';
import '../../controllers/equipment_fixes_controller.dart';
import '../widgets/fixes_card.dart';
import 'equipment_details.dart';

class EquipmentFixesHistory extends StatelessWidget {
  const EquipmentFixesHistory({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ShowEquipmentFixesController());
    return Scaffold(
        appBar: AppBar(
          elevation: 20,
          backgroundColor: const Color(0xff161a1d),
          title: const Center(
            child: Text(
              'Fixes history ',
              style: TextStyle(
                fontFamily: "DM Sans",
                fontWeight: FontWeight.w500,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
        ),
        backgroundColor: const Color(0xff161a1d),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                GetBuilder<ShowEquipmentFixesController>(builder: (controller) {
              if (controller.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              else if(controller.equipmentList.value!.equipmentFixes!.isEmpty){
                return Center(child: Text(
                  'No equipment fixes',style: TextStyle(color: Colors.white,fontSize: 20),
                ),);
              }

              else {
                return ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                         // Get.to(Equipment_Details());
                      },
                      child: Fixes_Card(
                        damageDate: controller.equipmentList.value!
                            .equipmentFixes![index].damageDate!,
                        fixDate: controller.equipmentList.value!
                            .equipmentFixes![index].fixDate!,
                        fixingCost: controller.equipmentList.value!
                            .equipmentFixes![index].fixingCost
                            .toString(),
                      )),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 7.5,
                  ),
                  itemCount: controller.equipmentList.value!.equipmentFixes!.length,
                );
              }
            })));
  }
}
