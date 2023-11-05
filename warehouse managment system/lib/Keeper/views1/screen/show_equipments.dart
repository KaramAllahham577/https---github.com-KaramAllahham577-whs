import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/test_controller.dart';


import '../../controllers/show_equipment_controller.dart';
import '../widgets/equipment_card.dart';
import '../widgets/shipment_card.dart';
import 'equipment_details.dart';
import 'equipment_fixes_history.dart';

class Show_Equipments extends StatefulWidget {
  Show_Equipments({super.key});

  @override
  State<Show_Equipments> createState() => _Show_EquipmentsState();
}

class _Show_EquipmentsState extends State<Show_Equipments> {
  final ShowEquipmentController _ShowEquipmentController =
      Get.put(ShowEquipmentController());

  @override
  Widget build(BuildContext context) {
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
        child: Obx(
          () {
            if(_ShowEquipmentController.loading.value){
              return Center(child: CircularProgressIndicator(),);
            }
            else if(_ShowEquipmentController.equipmentsList.isEmpty){
              return Center(child: Text("there is no equipments in this branch",style: TextStyle(color: Colors.white),),);
            }
            else {
              return  ListView.separated(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) =>
                    GestureDetector(
                        onTap: () {
                          box.storage("idequ", _ShowEquipmentController.equipmentsList[index].equipmentId);
                          Get.to(EquipmentFixesHistory());
                        },
                        child: Equipment_Card(
                            _ShowEquipmentController.equipmentsList[index])),
                separatorBuilder: (context, index) =>
                const SizedBox(
                  height: 7.5,
                ),
                itemCount: _ShowEquipmentController.equipmentsList.length)
            ;
            }
          })
      ),
    );
  }
}
