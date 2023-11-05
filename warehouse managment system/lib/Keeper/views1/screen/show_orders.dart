import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/order/show_order_conftroller.dart';
import '../../views/order_products_list.dart';
import '../widgets/order_card.dart';


class ShowOrders extends StatelessWidget {
   ShowOrders({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ShowOrderController());
    return Scaffold(
      backgroundColor: const Color(0xff161a1d),
      appBar: AppBar(
        elevation: 20,
        backgroundColor: const Color(0xff161a1d),
        title: const Center(
          child: Text(
            ' Orders List ',
            style: TextStyle(
              fontFamily: "DM Sans",
              fontWeight: FontWeight.w500,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Get.to(Order_Products_List());
                },
                child: const OrderCard()),
            separatorBuilder: (context, index) => const SizedBox(
              height: 7.5,
            ),
            itemCount: 1),
      ),
    );
  }
}

