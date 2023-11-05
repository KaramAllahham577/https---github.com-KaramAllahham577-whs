import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import '../../models/shipment_orders_list.dart';

final storage2 = GetStorage();

class Shipment_Orders_List_Card extends StatelessWidget {
  Shipment_Orders_List_Card(this._shipmentsOrdersList) {
    storage2.write("orderListId", _shipmentsOrdersList.orderListId);
  }
  ShipmentsOrdersList _shipmentsOrdersList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 385,
          height: 275,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff6a040f), width: 4),
            color: const Color(0Xfff4f4f8),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 7.5,
                  ),
                  Expanded(
                    child: Container(
                      height: 75,
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
                              'assets/images/icons/recipient.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Customer Name : ',
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
                              '${_shipmentsOrdersList.orderList?.customers?.customerName} ',
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
                    width: 7.5,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 7.5,
                  ),
                  Expanded(
                    child: Container(
                      height: 75,
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
                              'assets/images/icons/total_order_price.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Total Price : ',
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
                              '${_shipmentsOrdersList.orderList?.orderCost} Sp',
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
                    width: 7.5,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 7.5,
                  ),
                  Expanded(
                    child: Container(
                      height: 75,
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
                              'assets/images/icons/created_at.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Creatad at : ',
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
                              '${_shipmentsOrdersList.orderList?.createdAt?.year} / ${_shipmentsOrdersList.orderList?.createdAt?.month} / ${_shipmentsOrdersList.orderList?.createdAt?.day} ',
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
                    width: 7.5,
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
