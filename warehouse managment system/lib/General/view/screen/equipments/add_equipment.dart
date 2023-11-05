import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/test_controller.dart';
import 'package:untitled3/Keeper/core/constant/const.dart';

import '../../../../Keeper/models/addEquipment_Model.dart';
import '../../../../Keeper/view/widget/product/custom_text_date.dart';
import '../../../../Keeper/views1/widgets/addEquipmentTextFields.dart';




class AddEquipmentGeneral extends StatelessWidget {
  final _connect = GetConnect();
  final _equipmentNameController = TextEditingController();
  final _numberController = TextEditingController();
  final _dateInController = TextEditingController();
  final _employeeNameController = TextEditingController();
  final _totalCostController = TextEditingController();
  final descriptionController = TextEditingController();

  final box=Get.put(StorageController());

  AddEquipmentGeneral({super.key});
  void _sendPostRequest() async {
    String equipmentName = _equipmentNameController.text;
    String description = descriptionController.text;


    Equipment equipment = Equipment(
      systemEqipmentData: SystemEqipmentData(
        equipmentName: equipmentName,
        description: description,
      ),
      barnchEquipmentData: BarnchEquipmentData(

      ),
    );

    var response = await _connect.post(
      'http://$Ip:8000/api/managers/GeneralManager/Add/newEquipment?equipment_name=$equipmentName&description=$description',
      headers: {
        'Authorization':
        'Bearer $Token',
      },
     equipment,
    );

    if (response.statusCode==200||response.statusCode==201) {
      Get.snackbar(
        "${ _equipmentNameController.text}",
        "Equipment added successfully",
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 3),
        backgroundColor: const Color(0xff6a040f),
        colorText: Colors.white,
        // Text color of the snackbar
         messageText: const Text(
           'Equipment added successfully',
           style: TextStyle(
             color: Colors.white,
             fontSize: 15
           ),
         ),
      );

      print(response.body);
      debugPrint('success');
    } else {
      // Handle the error scenario
      debugPrint('error');
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xff161a1d),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Container(
              height: screenheight - 80,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff6a040f), width: screenWidth / 150),
                color: const Color(0xff161a1d),
                borderRadius: BorderRadius.circular(17.5),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Container(
                      width: 175,
                      height: 165,
                      child: Image.asset(
                        'assets/images/icons/add_equipment.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Column(
                      children: [
                        const Text(
                          "Add Equipment",
                          style: TextStyle(
                            fontFamily: "Dm Sans",
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 15),
                        AddEquipmentTextFields(
                          errorBorderColor: Colors.red,
                          labelText: 'Equipment Name',
                          errorText: 'Invalid Name',
                          hintText: 'Enter the Name',
                          textEditingController: _equipmentNameController,
                        ),

                        const SizedBox(height: 0),
                        AddEquipmentTextFields(
                          errorBorderColor: Colors.red,
                          labelText: '  Description',
                          errorText: 'Invalid Number',
                          hintText: 'Enter the Number',
                          textEditingController: descriptionController,
                        ),
                        const SizedBox(height: 2.5),



                        const SizedBox(height: 20,),
                        GestureDetector(
                          onTap: () => _sendPostRequest(),
                          child: Row(
                            children: [
                              const SizedBox(width: 30),
                              Expanded(
                                child: Card(
                                  color: const Color(0xff161a1d),
                                  elevation: 1000,
                                  shadowColor: Colors.white,
                                  child: Container(
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff53676D).withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: const Color(0xff6a040f), width: 2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          ' Add ',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: "DM Sans",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 22.5,
                                            color: Colors.white70,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 30),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Other widgets (AddEquipmentTextFields, DropdownMenu, etc.) should be defined outside the AddEquipment class.
// Make sure to import the required packages and define the missing widgets in your actual code.
