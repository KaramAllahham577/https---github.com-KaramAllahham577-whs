import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/employee/show_employee_controller.dart';
import 'package:untitled3/Keeper/view/widget/employee/search_employee.dart';

import '../../../../Keeper/controller/test_controller.dart';

import '../../../../Keeper/view/widget/employee/card_emp.dart';
import '../../../../Keeper/view/widget/search_bar.dart';
import '../../../controller/branch/show_employee_branch_general_controller.dart';
import '../../widget/employee/search_employee.dart';
import 'employee_profile.dart';

class ShowEmployeeBranchGeneral
    extends GetView<ShowEmployeeBranchControllerGeneral> {
  const ShowEmployeeBranchGeneral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final box = Get.put(StorageController());

    Get.put(ShowEmployeeBranchControllerGeneral());

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
                          SearchEmployeeBranchGeneral(search: controller.employeeList));
                    },
                  ),

                ],
              ),
              Expanded(child:
              GetBuilder<ShowEmployeeBranchControllerGeneral>(
                  builder: (controller) {
                    if (controller.isLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    else if (controller.employeeList.isEmpty) {
                      return const Center(
                          child: Text("no employees", style: TextStyle(
                              color: Colors.white, fontSize: 20),));
                    }
                    else {
                      return GridView.builder(
                        padding: const EdgeInsets.all(16),
                        itemCount:
                        controller.employeeList.length,

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
                          final employee =
                          controller.employeeList[index];
                          return InkWell(
                            child: CardEmp(
                              position: employee.position,
                              employeeName: employee.employeeName!,
                            ),
                            onTap: () {
                              box.storage("idEmpG", employee.id);
                              Get.to(const EmployeeProfileGeneral());
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
