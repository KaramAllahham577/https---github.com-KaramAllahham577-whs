import 'package:get/get.dart';
import 'package:untitled3/Keeper/data/datasource/remote/employee/employee_profile_data.dart';

import '../../../Keeper/core/function/check_internet.dart';
import '../../../Keeper/data/model/employee_modle/employee_profile.dart';
import '../../data/remote/employee/employee_profile_data.dart';



class EmployeeProfileControllerGeneral extends GetxController {




  late bool isLoading = true;

  late bool check = false;

  final Rx<EmployeeProfileModel?> employeeInfo =
      Rx<EmployeeProfileModel?>(null);

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  void getData() async {
    try {
      EmployeeProfileDataGeneral employeeProfileData = EmployeeProfileDataGeneral(
          curd: Get.find(),

        );
        check = !await checkInternet();
        update();

        print(';;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;');
        isLoading = true;
        var response = await employeeProfileData.getData();
        print('after response1111111111111111111111111111111111111');
        isLoading = false;
        if (response["status code"] == 200) {
          print(response["status code"]);

          print("cccccccccccccccccccccccccccccccccccccccccccccc");

          employeeInfo.value = EmployeeProfileModel.fromJson(response['data']);
          print("lllllllllllllllllllllllllllllllllllllllllllllll");
          update();
        }

    } catch (e) {
      print(e);
    } finally {
      isLoading = false;
    }
  }
}
