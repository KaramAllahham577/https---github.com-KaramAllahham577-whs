import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/test_controller.dart';


import '../../../../Keeper/views/order_products_list.dart';
import '../../../../Keeper/views1/widgets/shipment_order_list_card.dart';
import '../../../controller/shipment/shipment_orders_list_controller.dart';
import 'order_products_list.dart';


class ShipmentOrderListGeneral extends StatelessWidget {
  ShipmentOrderListGeneral({super.key});

  ShipmentOrderListGeneralController _shipmentOrderListController =
      Get.put(ShipmentOrderListGeneralController());

  @override
  Widget build(BuildContext context) {
    final box=Get.put(StorageController());
    return Scaffold(
      backgroundColor: const Color(0xff161a1d),
      appBar: AppBar(
        elevation: 20,
        backgroundColor: const Color(0xff161a1d),
        title: const Center(
          child: Text(
            'Shipment Orders List ',
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
        child: Obx(() {
          if (_shipmentOrderListController.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.separated(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      box.storage('IdOrder',_shipmentOrderListController.shipmentsList[index].orderListId );
                       Get.to(OrderProductsListGeneral());
                    },
                    child: Shipment_Orders_List_Card(_shipmentOrderListController.shipmentsList[index])),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 7.5,
                    ),
                itemCount: _shipmentOrderListController.shipmentsList.length);
          }
        }),
      ),
    );
  }
}
