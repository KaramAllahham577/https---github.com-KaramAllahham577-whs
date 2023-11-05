import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/test_controller.dart';
import 'package:untitled3/Keeper/views1/screen/shipment_details.dart';


import '../../controllers/shipment_details_controller.dart';
import '../../controllers/show_shipment_controller.dart';
import '../widgets/shipment_card.dart';

class Show_Shipment extends StatelessWidget {
  Show_Shipment({super.key});

  final ShipmentController shipmentcontroller = Get.put(ShipmentController());
  final ShipmentDetailsController _shipmentDetailsController =
  Get.put(ShipmentDetailsController());
  final box =Get.put(StorageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff161a1d),
      appBar: AppBar(
        elevation: 20,
        backgroundColor: const Color(0xff161a1d),
        title: const Center(
          child: Text(
            'Shipments ',
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
        child: Obx(
          () {
            if(shipmentcontroller.isLoading.value) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return ListView.separated(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    print(_shipmentDetailsController.shipmentsdetailslist);

                    box.storage("idShipment", _shipmentDetailsController.shipmentsdetailslist[index].id);

                    Get.to(Shipment_Details(_shipmentDetailsController.shipmentsdetailslist[index])
                    );

                  },
                  child: Shipment_Card(shipmentcontroller.shipmentsList[index])),
              separatorBuilder: (context, index) => const SizedBox(
                    height: 7.5,
                  ),
              itemCount: shipmentcontroller.shipmentsList.length);
            }
        }),
      ),
    );
  }
}
