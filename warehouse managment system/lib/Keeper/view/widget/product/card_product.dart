import 'package:flutter/material.dart';

import '../../../core/constant/image_asset.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({Key? key, required this.type, required this.price, required this.quantity, required this.image}) : super(key: key);
  final String type;
  final String price;
  final String quantity;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 320,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff6a040f), width: 4),
        color: Colors.white70,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 7,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              // color: const Color(0xff6a040f).withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2, color: const Color(0xff6a040f)),
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 100,
                  height: 90,
                  child: Image.asset(
                    ImageAsset.meat,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
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
                    border:
                        Border.all(color: const Color(0xff6a040f), width: 2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'Name :',
                        style: TextStyle(
                          fontFamily: "DM Sans",
                          fontWeight: FontWeight.w500,
                          fontSize: 22.5,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            type,
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
                  border: Border.all(color: const Color(0xff6a040f), width: 2),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: 50,
                      height: 65,
                      child: Image.asset(
                        'assets/images/icons/product_price.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                     Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '${price}sp',
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
                  border: Border.all(color: const Color(0xff6a040f), width: 2),
                ),
                child: Column(
                  children: [
                    SizedBox(
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
                          '${quantity}',
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
    );
  }
}
