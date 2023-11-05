import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/Keeper/views1/widgets/rectangle.dart';





class Pending_Request_Card extends StatelessWidget {

  Pending_Request_Card() {
  }
  @override
  Widget build(BuildContext context) {


    return  Column(
      children: [
        Container(
          width: 390,
          height: 370,
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
                '',

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
                          SizedBox(
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
                          SizedBox(
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
                      SizedBox(
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
              const SizedBox(
                height: 17.5,
              ),
              Row(children: [
                const SizedBox(width: 45,),
                Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xff6a040f),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color(0xff6a040f),
                        width: 2.2),
                  ),
                  child:  const Center(
                    child: Text(
                      "Reject",
                      style: TextStyle(
                        fontFamily: "DM Sans",
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),

                ),
                const SizedBox(width: 10,),
                Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xff007f5f),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color(0xff007f5f),
                        width: 2.2),
                  ),
                  child:  const Center(
                    child: Text(
                      "Accept",
                      style: TextStyle(
                        fontFamily: "DM Sans",
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),

                ),

              ],)
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
