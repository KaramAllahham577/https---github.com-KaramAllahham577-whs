import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 380,
          height: 360,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff6a040f), width: 4),
            color: const Color(0Xfff4f4f8),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              const SizedBox(height: 12.5,),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 65,
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
                              'assets/images/icons/id.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              ' Id :',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "DM Sans",
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Text(
                              ' 1 ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "DM Sans",
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                color: Colors.black,
                              ),
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
                height: 6,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 65,
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
                              'assets/images/icons/recipient.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              ' Customer :',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "DM Sans",
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Text(
                              'fronsah alfah',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "DM Sans",
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Colors.black,
                              ),
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
                height: 6,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 65,
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
                              'assets/images/icons/total_order_price.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              ' Order Price :',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "DM Sans",
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Text(
                              '968415724 Sp',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "DM Sans",
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Colors.black,
                              ),
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
                height: 6,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(

                      height: 57.5,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color:const Color(0xff56040d), width: 2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            child: Image.asset(
                              'assets/images/icons/created_at.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(
                            width: 45,
                          ),
                          const Text(
                            '2023/2/25 ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "DM Sans",
                              fontWeight: FontWeight.w500,
                              fontSize: 22.5,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 20,),
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
                height: 6,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(

                      height: 57.5,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color:const Color(0xff56040d), width: 2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            child: Image.asset(
                              'assets/images/icons/arrived.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          const Text(
                            'Arrived',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "DM Sans",
                              fontWeight: FontWeight.w500,
                              fontSize: 22.5,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 30,),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
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
