import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:untitled3/Keeper/core/class/crud.dart';
import 'package:untitled3/Keeper/view/screen/auth/register_page.dart';

import 'package:untitled3/Keeper/view/screen/auth/login_page.dart';

import 'Keeper/controller/employee/show_employee_controller.dart';

class InitialBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(Crud());
    (controller) => RegisterPage();


  }

}

