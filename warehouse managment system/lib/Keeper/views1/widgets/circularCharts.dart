import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CircularChartsWidget extends StatefulWidget {
  const CircularChartsWidget({super.key});

  @override
  State<CircularChartsWidget> createState() => _CircularChartsWidgetState();
}

class _CircularChartsWidgetState extends State<CircularChartsWidget> {
  int? touchedIndex;

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(centerSpaceRadius: 70, sectionsSpace: 5, sections: [
        PieChartSectionData(
          value: 40,
          titleStyle: const TextStyle(
            fontFamily: "Dm Sans",
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          color: const Color(0xff6a040f),
          radius: 70,
        ),
        PieChartSectionData(
          value: 35,
          titleStyle: const TextStyle(
            fontFamily: "Dm Sans",
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          color: const Color(0xff007f5f),
          showTitle: true,
          radius: 70,
        ),
        PieChartSectionData(
          value: 35,
          titleStyle: const TextStyle(
            fontFamily: "Dm Sans",
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          color: const Color(0xff004834),
          showTitle: true,
          radius: 70,
        ),
      ]),
    );
  }
}
