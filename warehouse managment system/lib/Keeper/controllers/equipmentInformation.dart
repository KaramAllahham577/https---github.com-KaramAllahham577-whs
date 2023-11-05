
import 'dart:io';

import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:get/get.dart';

import 'package:http/http.dart' as http;


import '../models/show_equipment_model.dart';


class EquipmentInformationController extends GetxController {
  ShowEquipmentModel equipments = Get.put(ShowEquipmentModel());
  RxBool loading = false.obs;

  var isLoading = true.obs;
  var equipmentsList = <ShowEquipmentModel>[].obs;

  HttpClient fetch_equipments = HttpClient();



  @override
  void onInit() {
    super.onInit();
    fetchEquipments();
  }



// ...

  // void fetchShipments() async {
  //   isLoading(true);
  //   try {
  //     var  equipment = await fetch_equipments.get('http://10.0.2.2:8000/api/managers/show/equipments/51', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiYjQ1MWI1MjQ1NGJjOTA3ZThmYzNiZTZjMDczYjEzMWNmMjJiZjI5NWRhNzU2NzM5ZmU2MmE4YmVjM2Y3ZjA0ZTUyMWJhYmI0MmMzYmRjODYiLCJpYXQiOjE2OTA1NDQ3MDMuOTE5NDkzLCJuYmYiOjE2OTA1NDQ3MDMuOTE5NDk2LCJleHAiOjE3MjIxNjcxMDMuOTExOTQxLCJzdWIiOiIxNSIsInNjb3BlcyI6WyJtYW5hZ2VyIl19.liIDhBDKMibqJgaTMa_HtyqefYFksKRYrdYql8WIRhF-m_7ji7CLF_NHz9Jt51PSQRda1UcbXH4PAGE-gPaKiJInV27YRRi_D_kHa-zHyNFT8UZld_yJysCVmfvjQrrseAY1Vl7MmLRlX5C_WZsOu-fIIxkJ7ouyGCXfVLxRGiVokejyz4qK63iBgeKF9yQDTAQfH_CPFLkS3a6i1JD9_OtSCWTbAB9m7ZOFbJ8wcWAhGA6iygivyNeER53xs_tB5WDLLuxcFXrjk5XTpDJMS8qVOz_0yJOJ7FnB7qFbOVxbAt97_EJXFO-eNXjVZ0CRtm2-_ztu4Y5DYL_H2c3GMvPurmxgQhKK4QlEV9SYdYzD0vsY19saMCKSt7f_vpolqQfgBIJPbd1NqDh1AVvnVFhyXjYPBC2aZfedt0ndqZu71_EsRv99evbU_ak3j8jub6qDDGmKQNGeLF-E79-Xr1UFuHQcoz0Zu4BMzLIWMQ7Er879yTAXSJbTlbcb2lkWfr4q1zQvMk2kTKfRW1lTDydXurIK4Lb9hV0236AdPMbvrI3U5fFeZ8X_R3zR0DCQ9tOx8UjTthbfWnvwgDte8ovYc1z1G8wVMdxm5PWbKMDe2FdZo5XlRap6Fl96fi6DNPq8al-R22Ebk8M82x7fapMxLFyiBR52Il7jAmaupi0');
  //     print(equipment);
  //
  //     if (equipment != null ) {
  //       equipmentsList.value = List<ShowEquipmentModel>.from(equipment.map((item) => Shipments.fromJson(item)));
  //     }
  //
  //   } finally {
  //     isLoading(false);
  //     print('تم تحميل المعدات بنجاح ');
  //   }
  // }
  void fetchEquipments() async {
    loading(true);

    var uri = Uri.parse('http://10.0.2.2:8000/api/managers/show/equipment/51');
    var client = http.Client();
    var _headers = {
      'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiYTIyM2RkZmJkNWU3YWY1ZGY0MGVjYjI3YzM0NmNiNTMxY2M3Y2FkMDcwOTczYjFjYWYzOTU4ZjA2YWM4N2VmYzQxMmE0MDhhNWYwMTNhNTgiLCJpYXQiOjE2OTE5MTc2NDguMTQzMjY4LCJuYmYiOjE2OTE5MTc2NDguMTQzMjcsImV4cCI6MTcyMzU0MDA0OC4wNjIyNTEsInN1YiI6IjE2Iiwic2NvcGVzIjpbIm1hbmFnZXIiXX0.mOgI7YXILzPwj3EdGwGx8elSJ4XJpK7t02PLYhc2CRj_CxMpuYDjsnVfioLPpgIU5J2KF1apPDpdQwX9gHxbmeap4qJep4JINjU2PNXjmgg3V_6dWhBmUs49ZL3X9Gt9k3u1_1LZ7t5HzdDKZBBvWo4IVRMcJLAW-XV7ratntlahJjCtzfxvEpzurAGLoJ8TRQr1KAMPz7EzEQroHMJBJIQU8UrIM1lO4DFqW68im0KHk-E7-hiUnw_EJsD4oN0KNs0bRj_I_4r4qSQKdQoSpAl8NBYcv368OMkQXy0s77BnJAqeGJq4fP0LQVA7zVnjedvlFnWYqayxNqUhy13EovFTs7mY9Gk17EmVtJ4PDHjvIG9ZypepQAvJZxuKoFpCTymWcOvpTy8YaLjLdVNg-7UOIb9v8F4dDoUO_AnV92J0yCDvwcMbMIRDw00raCpAZSe8Ka8EmXdCnxkwdcA3hCB19XYQ3sJ8q5jkrabtIwghuS552Hd0gXFBQPManz7mOF-Ed7r5I5zpLR4OWinwnFA7azAMdzHHjiIuIX_JhnevzBseda--4MZDIGqewMp9SRPqUZj8rZUZaFiapcmbrWz7tnUSSc0BLrZJu4wVmameEIy3SUBya_YXEsqlpcEO-h6NbXQo1xnEwPH-uDLna5HskIgh4r1zMmkJRtq7b9E',
    };

    var response = await client.get(uri, headers: _headers);
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      List<dynamic> equipmentList = jsonResponse as List<dynamic>;
      equipmentsList.value = equipmentList.map((item) => ShowEquipmentModel.fromJson(item)).toList();
      print(response.body);
    } else {
      // Handle error (e.g., show an error message or retry the request)
      print('Error: ${response.statusCode}');
    }

    loading(false);
    client.close();
  }

}
