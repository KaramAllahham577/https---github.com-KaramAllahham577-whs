import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../controllers/show_equipment_controller.dart';
import '../../models/show_equipment_model.dart';

final equipmentCardStorage = GetStorage();

class Equipment_Card extends StatelessWidget {
  final ShowEquipmentModel _Equipments;

  Equipment_Card(this._Equipments){
    equipmentCardStorage.write("equipmentId", _Equipments.equipmentId);

  }



  @override
  Widget build(BuildContext context) {
    bool available = false;
    return Column(
      children: [
        Container(
          width: 370,
          height: 350,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff6a040f), width: 4),
            color: const Color(0Xfff4f4f8),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 7.5,
                  ),
                  Expanded(
                    child: Container(
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color(0xff6a040f), width: 2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: const Color(0Xfff4f4f8),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 1.75, color: const Color(0xff6a040f)),
                            ),
                            child: Image.asset(
                              'assets/images/icons/equipment_label.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              ' Label :',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "DM Sans",
                                fontWeight: FontWeight.w500,
                                fontSize: 19,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '${_Equipments.equipmentName} ',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontFamily: "DM Sans",
                                fontWeight: FontWeight.w500,
                                fontSize: 19,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7.5,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 7.5,
                  ),
                  Expanded(
                    child: Container(
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color(0xff6a040f), width: 2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: const Color(0Xfff4f4f8),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 1.75, color: const Color(0xff6a040f)),
                            ),
                            child: Image.asset(
                              'assets/images/icons/total amount.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              ' Total Number :',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "DM Sans",
                                fontWeight: FontWeight.w500,
                                fontSize: 19,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '${_Equipments.quantity} ',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontFamily: "DM Sans",
                                fontWeight: FontWeight.w500,
                                fontSize: 19,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7.5,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color(0xff6a040f), width: 2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 165,
                            height: 50,
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Date In :',
                                style: TextStyle(
                                  fontFamily: "DM Sans",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22.5,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                '${_Equipments.dateIn} ',
                                style: const TextStyle(
                                  fontFamily: "DM Sans",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22.5,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color(0xff6a040f), width: 2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 165,
                            height: 50,
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                ' Available Of It :',
                                style: TextStyle(
                                  fontFamily: "DM Sans",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                '${_Equipments.available} ',
                                style: const TextStyle(
                                  fontFamily: "DM Sans",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22.5,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
