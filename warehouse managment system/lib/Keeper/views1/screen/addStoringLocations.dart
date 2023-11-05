import 'package:flutter/material.dart';

import '../../view/widget/dropdownmenu.dart';
import '../widgets/addEquipmentTextFields.dart';



class AddStoringLocation extends StatelessWidget {
  final _equipmentNameController = TextEditingController();
  final _numberController = TextEditingController();
  final _dateInController = TextEditingController();
  final _employeeNameController = TextEditingController();
  final _totalCostController = TextEditingController();

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
                border: Border.all(
                    color: const Color(0xff6a040f), width: screenWidth / 150),
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
                        'assets/images/icons/addstoringlocations.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Column(
                      children: [
                        const Text(
                          "Add Storing Location",
                          style: TextStyle(
                            fontFamily: "Dm Sans",
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            Expanded(
                                child: MyDropDownMenu(
                                  enabledBorderColor: const Color(0xff6a040f),
                                  initialSelectedItem: "",
                                  hintText: 'Select Main Section',
                                  typeList: const [
                                    'A',
                                    'B',
                                    'Add Main Section'
                                  ],
                                )),
                            const SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        AddEquipmentTextFields(
                          errorBorderColor: Colors.red,
                          labelText: 'Total Quantity',
                          errorText: 'Invalid Quantity',
                          hintText: 'Enter the Quantity',
                          textEditingController: _equipmentNameController,
                        ),
                        GestureDetector(
                          onTap: () {},
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
                                      border: Border.all(
                                          color: const Color(0xff6a040f), width: 2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
