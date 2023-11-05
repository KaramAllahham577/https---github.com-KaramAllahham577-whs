import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/General/controller/shipment/order_products_controller.dart';

import '../../../../Keeper/views/order_product_list_card.dart';



class OrderProductsListGeneral extends StatelessWidget {
  OrderProductsListGeneral({super.key});


  @override
  Widget build(BuildContext context) {
    Get.put(OrderProductGeneralController());
    return Scaffold(
      backgroundColor: const Color(0xff161a1d),
      appBar: AppBar(
        elevation: 20,
        backgroundColor: const Color(0xff161a1d),
        title: const Center(
          child: Text(
            ' Order Products List ',
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
          child: GetBuilder<OrderProductGeneralController>(builder: (controller) {
         if(controller.isLoading){
           return const Center(child: CircularProgressIndicator(),);
         }
         else{
           return
             ListView.separated(
                 scrollDirection: Axis.vertical,
                 itemBuilder: (context, index) =>
                     Order_Product_List_Card1(
                       name: controller.orderProductList[index].productName,
                       quantity: controller.orderProductList[index].quantity
                           .toString(),
                       price: controller.orderProductList[index].price
                           .toString(),
                       total: controller.orderProductList[index].totalPrice
                           .toString(),

                     ),
                 separatorBuilder: (context, index) =>
                 const SizedBox(
                   height: 7.5,
                 ),
                 itemCount: controller.orderProductList.length)
           ;
         }
          },)

      ),
    );
  }
}
