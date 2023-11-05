import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


import 'lineTitles.dart';

class BarChartWidget extends StatelessWidget {
  const BarChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  BarChart(
        BarChartData(
          titlesData: FlTitlesData(
            show: true,
            bottomTitles: LineTitles.getBottomTitleData(),
            leftTitles: LineTitles.getLeftTitleData(),
            rightTitles: LineTitles.getRightTitleData(),
            topTitles: LineTitles.getTopTitleData(),

          ),

          barGroups: [
            CustomBarGroupData.getBarGroupData(x: 0, toY: 50, color: const Color(0xff6a040f)),
            CustomBarGroupData.getBarGroupData(x: 3, toY: 4, color: const Color(0xff007f5f)),
            CustomBarGroupData.getBarGroupData(x: 6, toY: 6, color: const Color(0xff004834)),

        ],
          borderData: FlBorderData(
              show: true,
              border: Border.all(
                width: 2,
                color: Colors.grey,
              )),
          groupsSpace: 10 ,

        ),

    );
  }
}
class CustomBarGroupData {
  static BarChartGroupData getBarGroupData({
    required int x,
    required double toY,
    required Color color,
  }) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: toY,
          borderRadius: BorderRadius.circular(5),
          backDrawRodData: BackgroundBarChartRodData(),

          width: 20,
          color: color,
        ),
      ],
    );
  }
}
