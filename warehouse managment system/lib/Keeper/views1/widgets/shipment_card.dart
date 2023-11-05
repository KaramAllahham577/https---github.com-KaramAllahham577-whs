import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:untitled3/Keeper/views1/widgets/rectangle.dart';


import '../../controllers/show_shipment_controller.dart';
import '../../models/show_shipments_Model.dart';
final storage1 = GetStorage();

class Shipment_Card extends StatelessWidget {
  Shipments shipments  ;

  Shipment_Card(this.shipments) {
    storage1.write("shipmentId", shipments.id);
  }
  @override
  Widget build(BuildContext context) {

    return  Column(
        children: [
          Container(
            width: 390,
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff6a040f), width: 4),
              color: const Color(0Xfff4f4f8).withOpacity(0.9),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 7.5,
                ),

                Text(
                  '${shipments.id}',

                  style: const TextStyle(
                    fontFamily: "DM Sans",
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 12.5,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 90,
                              height: 90,
                              child: Image.asset(
                                'assets/images/icons/warehouse (4).png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            line(),
                            const SizedBox(
                              height: 3,
                            ),
                            const Rectangle1(),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 70,
                              height: 70,
                              child: Image.asset(
                                'assets/images/icons/green_sh_card_icon.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 240,
                          width: 269,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 8.5,
                              ),
                              Expanded(
                                child: Container(
                                  width: 260,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 7.5, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff6a040f).withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: const Color(0xff6a040f),
                                        width: 2.2),
                                  ),
                                  child: Center(
                                    child: Row(
                                      children: [

                                        const Text(
                                          "Source :",
                                          style: TextStyle(
                                            fontFamily: "DM Sans",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 22,
                                            color: Colors.black,
                                          ),
                                        ),

                                        Expanded(
                                          flex: 1,
                                          child: Align(
                                            alignment: Alignment.centerLeft,

                                            child: Text(
                                              ' ${shipments.sourceCity}',
                                              style: const TextStyle(
                                                fontFamily: "DM Sans",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20,
                                                color: Colors.black,

                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 260,
                                height: 75,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.025),

                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.black,
                                      width: 2
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 5,),
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        '- ${shipments.shipmentDay} -',
                                        style: const TextStyle(
                                          fontFamily: "DM Sans",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 23,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 2.5,),

                                     Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        shipments.shipmentDate.toString(),
                                        style: TextStyle(
                                          fontFamily: "DM Sans",
                                          fontWeight: FontWeight.w100,
                                          fontSize: 24,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),



                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Expanded(
                                child: Container(
                                  width: 260,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 7.5, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff007f5f)
                                        .withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: const Color(0xff007f5f),
                                        width: 2.2),
                                  ),
                                  child: Center(
                                    child: Row(
                                      children: [

                                        const Text(
                                          "Destination :",
                                          style: TextStyle(
                                            fontFamily: "DM Sans",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 22,
                                            color: Colors.black,
                                          ),
                                        ),

                                        Expanded(
                                          flex: 1,
                                          child: Align(
                                            alignment: Alignment.centerLeft,

                                            child: Text(
                                              ' ${shipments.destinationRegion}',
                                              style: const TextStyle(
                                                fontFamily: "DM Sans",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 22,
                                                color: Colors.black,

                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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

Widget line() => const DottedLine(
      direction: Axis.vertical,
      lineLength: 50,
      lineThickness: 7.5,
      dashLength: 5.0,
      dashColor: Colors.black,
      dashGapLength: 4,
      dashRadius: 5,
    );
