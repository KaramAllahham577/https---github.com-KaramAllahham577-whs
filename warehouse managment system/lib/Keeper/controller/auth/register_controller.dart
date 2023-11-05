import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:untitled3/Keeper/controller/test_controller.dart';

import '../../core/class/crud.dart';
import '../../core/constant/api.dart';
import '../../core/constant/const.dart';
import '../../core/function/check_internet.dart';
import '../../data/datasource/remote/auth_data/register_data.dart';
import '../../data/model/auth_model/register_model.dart';
import '../../view/screen/home/home_page.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  late String isManager;
  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController confirmPassword;
  late TextEditingController number;
  late TextEditingController salary;
  late TextEditingController address;
  late TextEditingController position;
  GlobalKey<FormState> formState = GlobalKey();
  bool isLoading = false;
  bool check = false;
  RegisterData registerData = RegisterData(Get.find());


  bool isVisible = true;

  void change() {
    isVisible = !isVisible;

    update();
  }
  final pickedImage1 = Rx<File?>(null);

  File? get pickedImage => pickedImage1.value;

  Future<void> getImageFromCamera() async {
    final imagePicker = ImagePicker();
    final pickedImage = await imagePicker.pickImage(source: ImageSource.camera);

    if (pickedImage != null) {
      pickedImage1.value = File(pickedImage.path);
    }
  }

  Future<void> getImageFromGallery() async {
    final imagePicker = ImagePicker();
    final pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      pickedImage1.value = File(pickedImage.path);
    }
  } var role;


  postData() async {

    if (formState.currentState!.validate()) {


      try {
        RegisterModel registerModel = RegisterModel(
            name: name.text,
            isManager: isManager,
            salary: salary.text,
            phone: number.text,
            email: email.text,
            roleId: "1",
            password: password.text,
            confirmPassword: confirmPassword.text,
            address: "address.text");
        isLoading = true;
        update();
        var response = await registerData.postData(registerModel.toJson());
        print(
            "after response body'''''''''''''''''''''''''''''''''''''''''''''//////////////////////////////////////////////////////////////////////////////");

        isLoading = false;

        update();

        if (true) {
          ApiData.token = response['token'];
          Get.to(const HomePage10());
        } else {
          Get.snackbar(
            'Error',
            'Sign-in failed',
            duration: const Duration(seconds: 5),
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
        }
      } catch (e) {
        isLoading = false;
        update();

        Get.snackbar(
          snackPosition: SnackPosition.TOP,
          'Error',
          e.toString(),
          leftBarIndicatorColor: Colors.black,
          duration: const Duration(seconds: 4),
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
      update();
    } else {
      print("sssss");
    }
  }
  RxString selectedValue = "keeper".obs;
  @override
  void onInit() {

    email = TextEditingController();
    password = TextEditingController();
    confirmPassword = TextEditingController();
    name = TextEditingController();
    salary = TextEditingController();
    number = TextEditingController();
    address = TextEditingController();
    position= TextEditingController();
    super.onInit();
  }
  final box=Get.put(StorageController());

  Future<void> sendData() async {
    print("aaaaaaaaaaaaaaaaaaaaaaaaaaa");
    print(box.reade("idBranch12"));
    print(box.reade("iddes"));
    print(isManager);
    var headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ${Token}'
    };
    try{
      var request = http.MultipartRequest('POST', Uri.parse('http://$Ip:8000/api/managers/register'),);

      request.fields.addAll({
        'employee_name': name.text,
        'email': email.text,
        'password': password.text,
        'password_confirmation': password.text,
        'phone_number': number.text,
        'address': 'damascus',
        'salary': salary.text,
        'is_manager': isManager,
        'role_id': '1',
        'branch_id':'${box.reade("idBranch12")}',
        'position': position.text,
        'address_id': '${box.reade("iddes")}'
      });
      request.files.add(await http.MultipartFile.fromPath('image', pickedImage1.value!.path));
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        print(await response.stream.bytesToString());
      }
      else {
        print(response.reasonPhrase);
      }

    }catch(error){

    }
  }


}
