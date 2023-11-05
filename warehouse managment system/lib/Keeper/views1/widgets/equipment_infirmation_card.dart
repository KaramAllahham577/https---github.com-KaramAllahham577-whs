import 'package:flutter/material.dart';

import '../../models/show_equipment_model.dart';


class Equipment_Information_Card extends StatelessWidget {
   Equipment_Information_Card(this._EquipmentsInformation);
  final ShowEquipmentModel _EquipmentsInformation;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 380,
          height: 305,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff6a040f), width: 4),
            color: const Color(0Xfff4f4f8),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              SizedBox(height: 12.5,),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xff6a040f), width: 2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: const Color(0Xfff4f4f8),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 1.75, color: Color(0xff6a040f)),
                            ),
                            child: Image.asset(
                              'assets/images/icons/id.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              ' Id :',
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
                              '${_EquipmentsInformation.id} ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
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
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),

              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xff6a040f), width: 2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: const Color(0Xfff4f4f8),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 1.75, color: Color(0xff6a040f)),
                            ),
                            child: Image.asset(
                              'assets/images/icons/total amount.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              ' Total Amount :',
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
                              '${_EquipmentsInformation.quantity} ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
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
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 57.5,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xff6a040f), width: 2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 130,
                            height: 55,
                            child: Image.asset(
                              'assets/images/icons/employee_card.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Ahmad Mohsen',
                                style: TextStyle(
                                  fontFamily: "DM Sans",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22.5,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xff6a040f), width: 2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 130,
                            height: 50,
                            child:  Align(
                              alignment: Alignment.center,
                              child: Text(
                                ' Available :',
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
                                '700',
                                style: TextStyle(
                                  fontFamily: "DM Sans",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22.5,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                        ],
                      ),
                    ),
                  ),                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),

            ],
          ),
        ),
      ],
    );
  }

}
