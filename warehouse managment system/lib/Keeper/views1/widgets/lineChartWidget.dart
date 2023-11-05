import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../views/lineTitles.dart';


class LineChartWidget extends StatelessWidget {
  LineChartWidget({super.key});

  List<Color> gradiantColors = [
    const Color(0xff6a040f),
    const Color(0xff6a040f),
    const Color(0xff007f5f),
  ];

  @override
  Widget build(BuildContext context) {
    return LineChart(LineChartData(
        lineTouchData: LineTouchData(
            touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
          getTooltipItems: (List<LineBarSpot> touchedBarSpots) {
            List<LineTooltipItem> tooltipItems = [];
            touchedBarSpots.forEach((barSpot) {
              if (barSpot.x == barSpot.x && barSpot.y == barSpot.y) {
                tooltipItems.add(LineTooltipItem(
                  "Value: ${barSpot.y}",
                  TextStyle(color: Colors.white),
                ));
              }
            });
            return tooltipItems;
          },
        )),
        borderData: FlBorderData(
            show: true,
            border: Border.all(
              width: 2,
              color: Colors.grey,
            )),
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: LineTitles.getBottomTitleData(),
          leftTitles: LineTitles.getLeftTitleData(),
          rightTitles: LineTitles.getRightTitleData(),
          topTitles: LineTitles.getTopTitleData(),

        ),
        minX: 0,
        maxX: 12,
        minY: 0,
        maxY: 6,
        gridData: FlGridData(
          // drawHorizontalLine: true,
          // drawVerticalLine: true,

          show: true,
          horizontalInterval: 0.5,
          drawVerticalLine: true,

          getDrawingHorizontalLine: (value) {
            return  FlLine(
                dashArray: [1], color: Colors.white70, strokeWidth: 1.5);
          },
          getDrawingVerticalLine: (value) {
            return  FlLine(
                dashArray: [1], color: Colors.white70, strokeWidth: 0.75);
          },
        ),
        lineBarsData: [
          LineChartBarData(
            barWidth: 2,
            belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                  colors: gradiantColors
                      .map((color) => color.withOpacity(0.5))
                      .toList()),
            ),
            isCurved: true,
            gradient: LinearGradient(colors: gradiantColors),
            spots: const [
              FlSpot(
                0,
                3,
              ),
              FlSpot(2.6, 2),
              FlSpot(4.9, 5),
              FlSpot(6.8, 2.5),
              FlSpot(8, 4),
              FlSpot(9.5, 3),
              FlSpot(11, 4),
            ],
          ),
        ]));
  }
}
