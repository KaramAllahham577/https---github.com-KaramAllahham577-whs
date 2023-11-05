import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/General/controller/shipment/shipment_details_controller.dart';
import 'package:untitled3/General/view/screen/shipment/shipment_details.dart';
import 'package:untitled3/Keeper/controller/test_controller.dart';
import 'package:untitled3/Keeper/views1/screen/shipment_details.dart';

import '../../../../Keeper/controllers/shipment_details_controller.dart';
import '../../../../Keeper/controllers/show_shipment_controller.dart';
import '../../../../Keeper/views1/widgets/shipment_card.dart';
import '../../../controller/shipment/show_shipment_controller.dart';


class ShowShipmentGeneral extends StatelessWidget {
  ShowShipmentGeneral({super.key});

  final ShipmentGeneralController shipmentcontroller = Get.put(ShipmentGeneralController());
  final ShipmentDetailsGeneralController _shipmentDetailsController =
  Get.put(ShipmentDetailsGeneralController());
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

                    Get.to(ShipmentDetailsGeneral(_shipmentDetailsController.shipmentsdetailslist[index])
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

