
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/employee/show_employee_controller.dart';
import 'package:untitled3/Keeper/view/widget/employee/search_employee.dart';

import '../../../controller/test_controller.dart';
import '../../widget/employee/card_emp.dart';
import '../../widget/search_bar.dart';
import 'employee_profile.dart';

class ShowEmployee extends GetView<ShowEmployeeController> {
  const ShowEmployee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final box = Get.put(StorageController());

    Get.put(ShowEmployeeController());

    return Scaffold(
      backgroundColor: const Color(0xff161a1d),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff6a040f), width: 2.5),
              color: const Color(0xff161a1d),
              borderRadius: BorderRadius.circular(17.5)),
          child: Column(
            children: [
              Stack(
                children: [
                  SearchBar(
                    title: 'Employee',
                    onTap: () {
                      showSearch(
                          context: context,
                          delegate:
                              SearchEmployee(search: controller.employeeList));
                    },
                  ),
                  Positioned(
                      right: 0,
                      top: 24,
                      child: GetBuilder<ShowEmployeeController>(
                          builder: (controller1) {
                        return SizedBox(
                          height: 50,
                          child: DropdownButton<String>(
                            // style: TextStyle(color: Colors.red),

                            value: controller1.defaultValue,
                            items: controller1.dropdownItems.map((String item) {
                              return DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(color: Colors.black),
                                ),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              controller1.defaultValue = newValue;
                              if (newValue == 'All') {
                                controller1.isAll = true;
                                controller1.isKeeper = false;
                                controller1.update();
                              } else if (newValue == 'Keeper') {
                                controller1.isKeeper = true;
                                controller1.isAll = false;
                              } else {
                                controller1.isKeeper = false;
                                controller1.isAll = false;
                              }
                              controller1.update();
                            },
                          ),
                        );
                      })),
                ],
              ),
              Expanded(child:
                  GetBuilder<ShowEmployeeController>(builder: (controller) {
                if (controller.isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                else if(controller.employeeList.isEmpty){
                  return const Center(child: Text("no employees",style: TextStyle(color: Colors.white,fontSize: 20),));
                }
                  else {
                  return GridView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: controller.isAll!
                        ? controller.employeeList.length
                        : controller.isKeeper!
                            ? controller.employeesKeeper.length
                            : controller.employeesAssistant.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) {
                      // print(employee.data![index].employee!.position!);
                      // controller.update();
                      final employee = controller.isAll!
                          ? controller.employeeList[index]
                          : controller.isKeeper!
                              ? controller.employeesKeeper[index]
                              : controller.employeesAssistant[index];
                      // print(employee.data![index].employee!.position!);
                      return InkWell(
                        child: CardEmp(
                          position: employee.employee!.position,
                          employeeName: employee.employee!.employeeName!,
                        ),
                        onTap: () {
                          box.storage("idEmp", employee.employeeId);
                          Get.to(const EmployeeProfile());
                        },
                      );
                    },
                  );
                }
              }))
            ],
          ),
        ),
      ),
    );
  }
}
