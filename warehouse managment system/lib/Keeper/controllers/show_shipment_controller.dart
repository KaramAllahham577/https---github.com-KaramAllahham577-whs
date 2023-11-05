
import 'package:get/get.dart';
import 'package:untitled3/Keeper/core/constant/const.dart';


import '../models/show_shipments_Model.dart';
import '../views/karam/base_client.dart';


class ShipmentController extends GetxController {
  Shipments shipments = Get.put(Shipments());

  var isLoading = true.obs;
  var shipmentsList = <Shipments>[].obs;

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
      print("////////////////////////////////////////////////////////");
     var  shipment = await fetch_shipments.get('http://$Ip:8000/api/managers/show/showShipments',Token);
     print(shipment);

     if (shipment != null) {
       shipmentsList.value = List<Shipments>.from(shipment.map((item) => Shipments.fromJson(item)));
     }

    } finally {
      isLoading(false);
      print('تم تحميل الشحنات بنجاح ');
    }
  }

}
