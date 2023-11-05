import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/test_controller.dart';
import 'package:untitled3/Keeper/core/constant/const.dart';

import '../../models/addEquipment_Model.dart';
import '../../view/widget/product/custom_text_date.dart';
import '../widgets/addEquipmentTextFields.dart';



class AddEquipment extends StatelessWidget {
  final _connect = GetConnect();
  final _equipmentNameController = TextEditingController();
  final _numberController = TextEditingController();
  final _dateInController = TextEditingController();
  final _employeeNameController = TextEditingController();
  final _totalCostController = TextEditingController();

  final box=Get.put(StorageController());
  void _sendPostRequest() async {
    String equipmentName = _equipmentNameController.text;
    String description = 'hello';
    String branchId = box.reade("idBranch1").toString();
    String employeeId = '22';
    String quantity = _numberController.text;
    String cost = _totalCostController.text;
    String dateIn = _dateInController.text;

    Equipment equipment = Equipment(
      systemEqipmentData: SystemEqipmentData(
        equipmentName: equipmentName,
        description: description,
      ),
      barnchEquipmentData: BarnchEquipmentData(
        employeeId: employeeId,
        available: quantity,
        branchId: branchId,
        cost: cost,
        quantity: quantity,
      ),
    );

    var response = await _connect.post(
      'http://$Ip:8000/api/managers/keeper/Add/newEquipment?equipment_name=$equipmentName&description=$description&branch_id=$branchId&employee_id=$employeeId&quantity=$quantity&cost=$cost&date_in=$dateIn',
      headers: {
        'Authorization':
        'Bearer $Token',
      },
     equipment,
    );

    print(response.status);
    print(box.reade("idBranch"));
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
                          labelText: '  Number Of IT',
                          errorText: 'Invalid Number',
                          hintText: 'Enter the Number',
                          textEditingController: _numberController,
                        ),
                        const SizedBox(height: 2.5),
                        AddEquipmentTextFields(
                          errorBorderColor: Colors.red,
                          labelText: '  Cost',
                          errorText: 'Invalid Number',
                          hintText: 'Enter the Number',
                          textEditingController: _totalCostController,
                        ),

                        // Add other text fields here
                        const SizedBox(height: 2.5),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15
                          ),
                          child: CustomTextDate(
                            icon: const Icon(
                              Icons.date_range,
                              color: Colors.white70,

                            ),
                            title: 'Date IN',
                            myController: _dateInController,
                            keyboardType: TextInputType.text,
                            validator: (p0) {

                            },

                          ),
                        ),
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
