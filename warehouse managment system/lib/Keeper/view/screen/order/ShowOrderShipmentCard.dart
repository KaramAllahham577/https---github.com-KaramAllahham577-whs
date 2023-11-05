import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/view/homepage.dart';
import 'package:untitled3/Keeper/views1/widgets/rectangle.dart';




class ShowOrderShipmentCard extends StatelessWidget {

  ShowOrderShipmentCard() {
  }
  @override
  Widget build(BuildContext context) {

    return  Stack(
      children: [
        Column(
            children: [
              Container(
                width: 390,
                height: 310,
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

                    const Text(
                      '4',

                      style: TextStyle(
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
                                Rectangle1(),
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
                                      width: 240,
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
                                          children: const [

                                            Text(
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
                                                  '',
                                                  style: TextStyle(
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
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: 240,
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
                                      children: const [
                                        SizedBox(height: 5,),
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            '',
                                            style: TextStyle(
                                              fontFamily: "DM Sans",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 23,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 2.5,),

                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text(
                                            '',
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
                                      width: 240,
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
                                          children: const [

                                            Text(
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
                                                  '',
                                                  style: TextStyle(
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
          ),
        Positioned(
          top: 8.5,
          right: 15,

          child: GestureDetector(
            onTap: () {
              // Show Snackbar
              Get.snackbar(

                'Success',
                'Your order added successfully to the shipment 5',
                snackPosition: SnackPosition.TOP,
                duration: const Duration(seconds: 2),
                backgroundColor: const Color(0xff6a040f),
                colorText: Colors.white,
                titleText: const Text(
                  'Success',

                  style: TextStyle(
                    fontFamily: "DM Sans",
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                messageText: const Text(
                  'Your order added successfully to the shipment 5',


                  style: TextStyle(
                    fontFamily: "DM Sans",
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),

              );
              Future.delayed(const Duration(seconds: 2), () {
                Get.offAll(HomePage13());
              });
            },
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: const Color(0xff6a040f),
                    width: 2
                ),
              ),
              width: 40,
              height: 40,
              child: Image.asset(
                'assets/images/icons/plus.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),    ],
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
