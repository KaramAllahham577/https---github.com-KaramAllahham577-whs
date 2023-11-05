import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX package

import '../controller/employee/show_employee_controller.dart';
import 'BarChartWidget.dart';
import 'CircularSectionName.dart';
import 'circularCharts.dart';
import 'lineChartWidget.dart';

class ProductsStatistics extends GetView<ShowEmployeeController> {
  final _selectedPeriod = 0.obs; // Using RxInt for reactive state

  @override
  Widget build(BuildContext context) {
    Get.put(ShowEmployeeController());
    return Scaffold(
      backgroundColor: const Color(0xff161a1d),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(

            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  width: 385,
                  height: 400,
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xff262b2d),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:LineChartWidget()
                ),
              ),

              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  width: 385,
                  height: 400,
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xff262b2d),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsetsDirectional.all(5),
                        height: 50,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: const [
                              SizedBox(width: 10),
                              CircularSectionName(
                                avatarText: 'Viper',
                                backgroundColor: Color(0xff007f5f),
                              ),
                              CircularSectionName(
                                avatarText: 'Phantom',
                                backgroundColor: Color(0xff6a040f),
                              ),
                              CircularSectionName(
                                avatarText: 'Scouts',
                                backgroundColor: Color(0xff004834),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                      const SizedBox(
                        height: 250,
                        child: CircularChartsWidget(),
                      ),
                    ],
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  width: 385,
                  height: 0,
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  padding: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xff262b2d),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const BarChartWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
