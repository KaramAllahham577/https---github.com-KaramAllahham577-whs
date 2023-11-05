import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../views/BarChartWidget.dart';
import '../../views/CircularSectionName.dart';
import '../../views/circularCharts.dart';
import '../../views/lineChartWidget.dart';


class ProductsStatistics extends StatefulWidget {
  ProductsStatistics({super.key});

  @override
  State<ProductsStatistics> createState() => _ProductsStatisticsState();
}

class _ProductsStatisticsState extends State<ProductsStatistics>
    with SingleTickerProviderStateMixin {
  int selectedPeriod = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff161a1d),
      // appBar: AppBar(
      //   elevation: 20,
      //   backgroundColor: const Color(0xff161a1d),
      //   title: const Center(
      //     child: Text(
      //       'ProductsStatistics ',
      //       style: TextStyle(
      //         fontFamily: "DM Sans",
      //         fontWeight: FontWeight.w500,
      //         fontSize: 25,
      //         color: Colors.white,
      //       ),
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              AspectRatio(
                aspectRatio: 1,
                child: Container(
                    width: 385,
                    height: 400,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        color: const Color(0xff262b2d),
                        borderRadius: BorderRadius.circular(10)),
                    child: InteractiveViewer(
                        boundaryMargin: const EdgeInsets.all(double.infinity),
                        child: LineChartWidget())),
              ),
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                    width: 385,
                    height: 400,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        color: const Color(0xff262b2d),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsetsDirectional.all(5),
                          height: 50,
                          child:  SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
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
                        const SizedBox(
                          height: 50,
                        ),
                        const SizedBox(
                          height: 250,
                          child: CircularChartsWidget(),
                        ),
                      ],
                    )),
              ),
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                    width: 385,
                    height: 0,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    padding: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        color: const Color(0xff262b2d),
                        borderRadius: BorderRadius.circular(10)),
                    child: const BarChartWidget()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
