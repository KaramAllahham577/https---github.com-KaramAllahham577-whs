import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/test_controller.dart';


import '../../../../Keeper/views1/screen/equipment_fixes_history.dart';
import '../../../../Keeper/views1/widgets/equipment_card.dart';
import '../../../controller/equipment_controller/show_equipment_controller.dart';
import '../../widget/equipment_card_genearl.dart';


class ShowEquipmentsGeneral extends StatefulWidget {
  ShowEquipmentsGeneral({super.key});

  @override
  State<ShowEquipmentsGeneral> createState() => _Show_EquipmentsState();
}

class _Show_EquipmentsState extends State<ShowEquipmentsGeneral> {



  @override
  Widget build(BuildContext context) {
    Get.put(ShowEquipmentGeneralController());
    final box=Get.put(StorageController());
    return Scaffold(
      backgroundColor: const Color(0xff161a1d),
      appBar: AppBar(
        elevation: 20,
        backgroundColor: const Color(0xff161a1d),
        title: const Center(
          child: Text(
            'Equipments List ',
            style: TextStyle(
              fontFamily: "DM Sans",
              fontWeight: FontWeight.w500,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GetBuilder<ShowEquipmentGeneralController>(
          builder:
          (controller) {
            if(controller.loading.value){
              return Center(child: CircularProgressIndicator(),);
            }
            else if(controller.equipmentsList.isEmpty){
              return Center(child: Text("there is no equipments in this branch",style: TextStyle(color: Colors.white),),);
            }
            else {
              return  ListView.separated(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) =>
                    GestureDetector(
                        onTap: () {
                          box.storage("idequ", controller.equipmentsList[index].equipmentId);
                           Get.to(EquipmentFixesHistory());
                        },
                        child: EquipmentCardGeneral(
                            Equipments:  controller.equipmentsList[index] ,)),
                separatorBuilder: (context, index) =>
                const SizedBox(
                  height: 7.5,
                ),
                itemCount: controller.equipmentsList.length)
            ;
            }
          })
      ),
    );
  }
}
