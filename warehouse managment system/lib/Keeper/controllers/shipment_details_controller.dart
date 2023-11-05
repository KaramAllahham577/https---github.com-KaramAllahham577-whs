import 'dart:io';

import 'package:get/get.dart';


import '../core/constant/const.dart';
import '../models/shipment_details_Model.dart';
import '../views/karam/base_client.dart';

class ShipmentDetailsController extends GetxController {
  ShipmentsDetails shipments =
      Get.put(ShipmentsDetails()); //this shipment from shipment_details_Model

  var isLoading = true.obs;
  var shipmentsdetailslist = <ShipmentsDetails>[].obs;
  HttpClient1 fetch_shipments = HttpClient1();

  @override
  void onInit() {
    super.onInit();
    fetchShipments();
  }

// ...

  void fetchShipments() async {
    isLoading(true);
    try {
      var shipmentDetails = await fetch_shipments.get(
          'http://$Ip:8000/api/managers/show/showShipments',
          Token);
      print(shipmentDetails);

      if (shipmentDetails != null) {
        shipmentsdetailslist.value = List<ShipmentsDetails>.from(
            shipmentDetails.map((item) => ShipmentsDetails.fromJson(item)));
      }
    } finally {
      isLoading(false);
      print('تم تحميل تفاصيل الشحنات بنجاح ');
    }
  }
}
