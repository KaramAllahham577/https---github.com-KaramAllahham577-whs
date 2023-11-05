import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Order_Product_List_Card1 extends StatelessWidget {

  const Order_Product_List_Card1({super.key, required this.name,required this.quantity,required this.price,required this.total});
final String? name;
final String? quantity;
final String? price;
final String? total;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 380,
          height: 265,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff6a040f), width: 4),
            color: const Color(0Xfff4f4f8),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              const SizedBox(height: 15),
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
                        border: Border.all(color: const Color(0xff6a040f), width: 2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 130,
                            height: 55,
                            child: Image.asset(
                              'assets/images/icons/product_name.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                           Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                name!,
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
                        border: Border.all(color: const Color(0xff6a040f), width: 2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 130,
                            height: 55,
                            child: Image.asset(
                              'assets/images/icons/quantity_box.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                           Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                quantity!,
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
                height: 6,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.025),

                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: const Color(0xff6a040f),
                              width: 2
                          ),
                        ),
                        child: Column(
                          children: [
                            Transform(
                              
                               // flipX: true,
                              transform: Matrix4.identity(),
                              child: Container(
                                width: 50,
                                height: 65,
                                child: Image.asset(
                                  'assets/images/icons/product_price.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                             Expanded(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '$price Sp',
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
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.025),

                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color(0xff6a040f),
                            width: 2
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 50,
                              height: 65,
                              child: Image.asset(
                                'assets/images/icons/total_products_price.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                             Expanded(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '$total Sp',
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
                      )),
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
