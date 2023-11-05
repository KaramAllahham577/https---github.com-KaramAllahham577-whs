import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/core/class/crud.dart';
import 'package:untitled3/Keeper/core/function/validator.dart';
import 'package:untitled3/Keeper/view/widget/auth/custom_button.dart';

import '../../../controller/auth/login_controller.dart';
import '../../../controller/auth/register_controller.dart';

import '../../Address.dart';
import '../../adressdes_drop.dart';
import '../../widget/auth/custom_text_field.dart';
import '../../widget/auth/custom_text_field_password.dart';

class RegisterPage extends GetView<RegisterController> {
  RegisterPage({Key? key}) : super(key: key);
  late String selectedType = "manager";
  late Crud Curd1;


  @override
  Widget build(BuildContext context) {
    final type = ["Employee", 'manager'];
    Get.put(LoginController1());
    Get.put(RegisterController());
    return Scaffold(
      backgroundColor: const Color(0xff161a1d),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: controller.formState,
            child: Container(
              decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color(0xff650707), width: 2.5),
                  color: const Color(0xff161a1d),
                  borderRadius: BorderRadius.circular(17.5)),
              child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Add an Employee \n          account',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Sign Up to your account",
                            style: TextStyle(color: Colors.white54),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Obx(
                            () => Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey[200],
                              ),
                              child: Stack(
                                children: [
                                  if (controller.pickedImage != null)
                                    Container(
                                      width: 150,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey[200],
                                      ),
                                      child: ClipOval(
                                        child: Image.file(
                                          controller.pickedImage!,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )
                                  else
                                    Center(
                                      child: Icon(
                                        Icons.person,
                                        size: 80,
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                  Positioned(
                                    bottom: 0,
                                    right: 10,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: IconButton(
                                        onPressed: () {
                                          Get.defaultDialog(
                                            backgroundColor:
                                                const Color(0xff161a1d),
                                            title: 'Choose',
                                            titleStyle:
                                                TextStyle(color: Colors.white),
                                            content: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ElevatedButton(
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(Color(
                                                                0xff650707)),
                                                  ),
                                                  onPressed: controller
                                                      .getImageFromGallery,
                                                  child: const Text('Gallery'),
                                                ),
                                                const SizedBox(width: 16),
                                                ElevatedButton(
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(Color(
                                                                0xff650707)),
                                                  ),
                                                  onPressed: controller
                                                      .getImageFromCamera,
                                                  child: const Text('Camera'),
                                                ),
                                              ],
                                            ),
                                            textCancel: "Close",
                                            onCancel: () {
                                              controller.getImageFromGallery;
                                            },
                                          );
                                        },
                                        icon: const Icon(
                                          Icons.camera_alt,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 50,
                      ),
                      CustomTextField(
                        label: 'Employee Name',
                        hint: "Employee Name",
                        icon: const Icon(
                          Icons.person,
                          color: Color(0xff8f2d56),
                        ),
                        textInputType: TextInputType.emailAddress,
                        validator: (val) {
                          return validInput(val!, 8, 'username');
                        },
                        myController: controller.name,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      CustomTextField(
                        label: 'email',
                        hint: "Enter Email",
                        icon: const Icon(
                          Icons.email,
                          color: Color(0xff8f2d56),
                        ),
                        textInputType: TextInputType.emailAddress,
                        validator: (val) {
                          return validInput(val!, 8, 'email');
                        },
                        myController: controller.email,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      // buildPassword(),
                      CustomTextFieldPassword(
                        validator: (val) {
                          return validInput(val!, 8, "");
                        },
                        label: 'Password',
                        hint: "Enter Password",
                        myController: controller.password,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      CustomTextFieldPassword(
                        validator: (val) {
                          return validInput(val!, 8, "");
                        },
                        label: 'Password',
                        hint: "Confirm Password",
                        myController: controller.confirmPassword,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      CustomTextField(
                        label: 'Phone Number',
                        hint: "Number",
                        icon: const Icon(
                          Icons.email,
                          color: Color(0xff8f2d56),
                        ),
                        textInputType: TextInputType.phone,
                        validator: (val) {
                          return validInput(val!, 8, 'number');
                        },
                        myController: controller.number,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      CustomTextField(
                        label: 'Salary Employee',
                        hint: "Salary Employee",
                        icon: const Icon(
                          Icons.monetization_on,
                          color: Color(0xff8f2d56),
                        ),
                        textInputType: const TextInputType.numberWithOptions(
                            decimal: true),
                        validator: (val) {
                          return validInput(val!, 8, 'number');
                        },
                        myController: controller.salary,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      CustomTextField(
                        label: 'Salary Employee',
                        hint: "Salary Employee",
                        icon: const Icon(
                          Icons.person,
                          color: Color(0xff8f2d56),
                        ),
                        textInputType: const TextInputType.numberWithOptions(
                            decimal: true),
                        validator: (val) {
                          return validInput(val!, 8, 'number');
                        },
                        myController: controller.position,
                      ),
                      const SizedBox(
                        height: 40,
                      ),

                      const SizedBox(
                        height: 5,
                      ),
                      AddressDropdown(),
                      const SizedBox(
                        height: 50,
                      ),
                  Container(
                    width: 400,
                    height: 70,
                    decoration: BoxDecoration(
                        border:
                        Border.all(color: const Color(0xff650707), width: 2.5),
                        color: const Color(0xff161a1d),
                        borderRadius: BorderRadius.circular(17.5)),
                    child: DropdownButton<String>(
                      dropdownColor: Color(0xff24292f),
                      style: TextStyle(color: Colors.white,fontSize: 18),
                      value: controller.selectedValue.value,
                      onChanged: (newValue) {
                        if(newValue=="keeper"){
                          controller.isManager="1";
                        } else if(newValue=="assistant"){
                          controller.isManager="2";
                        }
                        else{
                          controller.isManager="3";
                        }
                        controller.selectedValue.value = newValue!;
                        // Store the selected value

                      },
                      items: ["keeper", "assistant", "manager"]
                          .map<DropdownMenuItem<String>>(
                            (String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        ),
                      )
                          .toList(),
                    ),
                  ),
                      const SizedBox(
                        height: 50,
                      ),
                      CustomButton(

                        text: 'Sign Up',
                        onPressed: () {
                          controller.sendData();
                        },
                      ),
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
