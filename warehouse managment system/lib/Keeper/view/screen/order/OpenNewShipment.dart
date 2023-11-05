import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../views1/widgets/addShipmentTextFields.dart';
import '../../../views1/widgets/dropdownmenu.dart';


class OpenNewShipment extends StatefulWidget {
  const OpenNewShipment({super.key});

  @override
  State<OpenNewShipment> createState() => _OpenNewShipmentState();
}

class _OpenNewShipmentState extends State<OpenNewShipment> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; //411
    double screenheight = MediaQuery.of(context).size.height; //707
    final emailcontroller = TextEditingController();


    return Scaffold(

        backgroundColor: const Color(0xff161a1d),
        body: SafeArea(
          child: Padding(
            padding:
            const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: SingleChildScrollView(
              child: Container(
                height: screenheight - 80,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0xff6a040f),
                        width: screenWidth / 150),
                    color: const Color(0xff161a1d),
                    borderRadius: BorderRadius.circular(17.5)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 175,
                        height: 165,
                        child: Image.asset(
                          'assets/images/icons/add_shipment_page.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Open New Shipment",
                        style: TextStyle(
                          fontFamily: "Dm Sans",
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                              child: MyDropDownMenu(
                                enabledBorderColor: const Color(0xff6a040f),
                                initialSelectedItem: "",
                                hintText: 'Select Type',
                                typeList: [
                                  'aerial',
                                  'overland',
                                  'neutical',
                                ],
                              )),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AddShipmentTextFields(
                        errorBorderColor: Colors.red,
                        labelText: 'Shipment Date',
                        errorText: 'Invalid Date',
                        hintText: 'Enter the date',
                        textEditingController: emailcontroller,
                      ),

                      AddShipmentTextFields(
                        errorBorderColor: Colors.red,

                        labelText: 'Max Quantity',
                        errorText: 'Invalid Quantity',
                        hintText: 'Enter the Quantity',
                        textEditingController: emailcontroller,
                      ),
                      AddShipmentTextFields(
                        errorBorderColor: Colors.red,

                        labelText: 'Shipment Cost',
                        errorText: 'Invalid Cost',
                        hintText: 'Enter the Cost',
                        textEditingController: emailcontroller,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          // Get.to(OpenNewShipmentPath());
                        },
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 30,
                            ),
                            Expanded(
                              child: Card(
                                color: const Color(0xff161a1d),
                                elevation: 1000,
                                shadowColor: Colors.white,
                                child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff53676D).withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: const Color(0xff6a040f), width: 2),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 40,
                                        child: Image.asset(
                                          'assets/images/icons/shipment_path.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Text(
                                        'Set Path ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: "DM Sans",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 22.5,
                                          color: Colors.white70,
                                        ),
                                      ),
                                      const SizedBox(width: 10,),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
