import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:untitled3/Keeper/models/show_equipment_model.dart';

import '../../models/equipment_fixes.dart';

class Fixes_Card extends StatelessWidget {
  Fixes_Card({ required this.damageDate, required this.fixDate, required this.fixingCost});


  final String damageDate;
  final String fixDate;
  final String fixingCost;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 370,
          height: 270,
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
                              'assets/images/icons/damage.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              ' Damage Date :',
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
                              damageDate,
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
                              'assets/images/icons/fixes_ranch.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              ' Fix Date :',
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
                              '$fixDate ',
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
                            width: 130,
                            height: 50,
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Fix Cost : ',
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
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '${fixingCost} Sp',
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
