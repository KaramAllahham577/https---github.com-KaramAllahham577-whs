import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/Show_Order_Products_Model.dart';


class Order_Product_List_Card extends StatelessWidget {
   Order_Product_List_Card(this._ShowOrderProductsModel);
   ShowOrderProductsModel _ShowOrderProductsModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            SizedBox(height: 15),
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
                            'assets/images/icons/product_name.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${_ShowOrderProductsModel.productName}',
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
                            'assets/images/icons/quantity_box.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${_ShowOrderProductsModel.quantity} box',
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
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.025),

                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Color(0xff6a040f),
                            width: 2
                        ),
                      ),
                      child: Column(
                        children: [
                          Transform(
                          
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
                                '${_ShowOrderProductsModel.price} Sp',
                                style: TextStyle(
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
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.025),

                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color(0xff6a040f),
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
                                '${_ShowOrderProductsModel.totalPrice} Sp',
                                style: TextStyle(
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
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
