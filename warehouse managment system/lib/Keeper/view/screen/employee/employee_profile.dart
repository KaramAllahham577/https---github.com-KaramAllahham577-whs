import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/employee/employee_profile_controller.dart';
import 'package:untitled3/Keeper/core/constant/image_asset.dart';

import '../../../core/constant/app_color.dart';
import '../../widget/employee/top_portion.dart';
import '../../widget/employee/custom_container.dart';

class EmployeeProfile extends StatelessWidget {
  const EmployeeProfile({Key? key, }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    EmployeeProfileController controller = Get.put(EmployeeProfileController());
    return Scaffold(
      body: Container(
        color: AppColor.backGround,
        child: Column(
          children: [
            Expanded(
              child: TopPortion(
                Image: ImageAsset.imageProfile,
              ),
            ),
            Expanded(
                flex: 2,
                child: Obx(() {
                  final employee1 = controller.employeeInfo.value;
                  if (controller.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "${employee1?.employeeName}",
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          CustomContainer(title: 'Email :', text: '${employee1?.email}',),
                          CustomContainer(
                            title: 'Phone :',
                            text: '${employee1?.phoneNumber}',
                          ),
                           CustomContainer(
                            title: 'Salary :',
                            text: '${employee1?.salary}',
                          ),
                           CustomContainer(
                            title: 'Position :',
                            text: '${employee1?.position}',
                          ),
                        ],
                      ),
                    );
                  }
                })),
          ],
        ),
      ),
    );
  }
}
