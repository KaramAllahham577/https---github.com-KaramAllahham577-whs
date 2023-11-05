import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Keeper/models/shipment_details_Model.dart';
import '../../../../Keeper/views1/screen/Shipment_Order_List.dart';
import '../../../../Keeper/views1/widgets/rectangle.dart';
import '../../../../Keeper/views1/widgets/shipment_card.dart';

import 'Shipment_Order_List.dart';

class ShipmentDetailsGeneral extends StatelessWidget {
  ShipmentDetailsGeneral(this._shipmentDetails);

  ShipmentsDetails _shipmentDetails = ShipmentsDetails();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; //411
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xff161a1d),
      appBar: AppBar(
        elevation: 20,
        backgroundColor: const Color(0xff161a1d),
        title: const Center(
          child: Text(
            'Shipment Details ',
            style: TextStyle(
              fontFamily: "DM Sans",
              fontWeight: FontWeight.w500,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 7.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.025),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 2, color: const Color(0xff6a040f)),
                      ),
                      width: 130,
                      height: 40,
                      child: Text(
                        textAlign: TextAlign.center,
                        ' id : ${_shipmentDetails.id} ',
                        style: const TextStyle(
                          fontFamily: "DM Sans",
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                          color: Color(0xffadb5bd),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.025),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 2, color: const Color(0xff6a040f)),
                      ),
                      width: 150,
                      height: 40,
                      child: Text(
                        textAlign: TextAlign.center,
                        ' Type : ${_shipmentDetails.shipmentType}',
                        style: const TextStyle(
                          fontFamily: "DM Sans",
                          fontWeight: FontWeight.w500,
                          fontSize: 21,
                          color: Color(0xffadb5bd),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xff6a040f).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(width: 2, color: const Color(0xff6a040f)),
                  ),
                  child: Column(
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
                      Container(
                        width: 122,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // border: Border.all(
                          //     color: const Color(0xff007f5f), width: 2.2),
                        ),
                        child: Center(
                          child: Text(
                            maxLines: 2,
                            '${_shipmentDetails.sourceCity}',
                            style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontFamily: "DM Sans",
                              fontWeight: FontWeight.w500,
                              fontSize: 22,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                line(),
                const SizedBox(
                  width: 2,
                ),
                Transform.rotate(
                    angle: -3.14 / 2,
                    child: Container(child: const Rectangle1())),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xff007f5f).withOpacity(0.25),
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(width: 2, color: const Color(0xff007f5f)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        child: Image.asset(
                          'assets/images/icons/green_sh_card_icon.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 122,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // border: Border.all(
                          //     color: const Color(0xff007f5f), width: 2.2),
                        ),
                        child: Center(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              maxLines: 2,
                              '${_shipmentDetails.destinationCity}',
                              style: const TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontFamily: "DM Sans",
                                fontWeight: FontWeight.w500,
                                fontSize: 22,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12.5,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    width: 135,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.025),
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: const Color(0xff6a040f), width: 2),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(1),
                          width: 30,
                          child: const Icon(Icons.date_range,
                              size: 30, color: Color(0xff6a040f)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '${_shipmentDetails.shipmentDate.toString()}',
                          style: const TextStyle(
                            fontFamily: "DM Sans",
                            fontWeight: FontWeight.w100,
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    width: 120,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.025),
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: const Color(0xff6a040f), width: 2),
                    ),
                    child: Center(
                      child: Text(
                        ' ${_shipmentDetails.shipmentDay}',
                        style: const TextStyle(
                          fontFamily: "DM Sans",
                          fontWeight: FontWeight.w100,
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
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
                    padding: const EdgeInsets.all(5),
                    width: 100,
                    height: 112,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: const Color(0xff6a040f), width: 2),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Shipment Quantity ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "DM Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${_shipmentDetails.shipmentQuantity}",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFamily: "DM Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: const Color(0xff6a040f), width: 2),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Max Quantity ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "DM Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${_shipmentDetails.maxQuantity}",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFamily: "DM Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white70,
                          ),
                        ),
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
                    width: 120,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.025),
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: const Color(0xff6a040f), width: 2),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          child: Image.asset(
                            'assets/images/icons/shipment_cost.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  const Center(
                                    child: Text(
                                      'Shipment Cost :',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: "DM Sans",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22.5,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    " ${_shipmentDetails.shipmentCost}",
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontFamily: "DM Sans",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
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
                    width: 120,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.025),
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: const Color(0xff6a040f), width: 2),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          child: Image.asset(
                            'assets/images/icons/shipment_order_cost.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  const Center(
                                    child: Text(
                                      'Shipment Orders Cost :',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: "DM Sans",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22.5,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    " ${_shipmentDetails.shipProductsCost}",
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontFamily: "DM Sans",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
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
                    width: 100,
                    height: 45,
                    decoration: BoxDecoration(
                      color: _shipmentDetails.arrived == 1
                          ? const Color(0xff007f5f).withOpacity(0.25)
                          : const Color(0xff6a040f).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: _shipmentDetails.arrived == 1
                              ? const Color(0xff007f5f)
                              : const Color(0xff6a040f),
                          width: 2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _shipmentDetails.arrived == 1
                            ? const Icon(
                                Icons.check,
                                size: 30,
                                color: Colors.white30,
                              )
                            : const Icon(
                                Icons.close,
                                size: 30,
                                color: Colors.white30,
                              ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          _shipmentDetails.arrived == 1
                              ? 'arrived '
                              : 'not arrived yet',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFamily: "DM Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                            color: Colors.white70,
                          ),
                        ),
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
            GestureDetector(
              onTap: () {
                storage1.write("id1", _shipmentDetails.id);
                Get.to(ShipmentOrderListGeneral());
              },
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: const Color(0xff6a040f).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color(0xff6a040f), width: 2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            child: Image.asset(
                              'assets/images/icons/order_list.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Show Orders List ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "DM Sans",
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget line() => const DottedLine(
      direction: Axis.horizontal,
      lineLength: 68,
      lineThickness: 7.5,
      dashLength: 5.0,
      dashColor: Color(0xffadb5bd),
      dashGapLength: 4,
      dashRadius: 5,
    );
