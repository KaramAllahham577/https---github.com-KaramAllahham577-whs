import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../screen/employee/employee_profile.dart';

class CustomGrid extends StatelessWidget {
  const CustomGrid({Key? key, required this.employeesName, required this.imageProfile, required this.position,  }) : super(key: key);
  final String employeesName;
  final String imageProfile;
  final String position;

  @override
  Widget build(BuildContext context) {

    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: AssetImage(imageProfile),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  employeesName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
                Text(
                  position,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      onTap: (){
        Get.to( EmployeeProfile());
      },
    );
  }
}
