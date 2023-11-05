import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles {
  static getBottomTitleData() =>
     AxisTitles(
      sideTitles: SideTitles(

      showTitles: true,
      reservedSize: 30,
        interval: 7,

        getTitlesWidget: (value, meta) {
          String text ='';

          switch (
          value.toInt())
          {
            case 7:
              text='1-7 June';
              break;
            case 14:
              text='8-15 June';
              break;
            case 21:
              text='16-23 June';
              break;
            case 28:
              text='24-30 \n June';
              break;
            // case 28:
            //   text='THU';
            //   break;

          }
          return Text(
            text,
            style: const TextStyle(
              fontFamily: "Dm Sans",
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          );

        },
    ),
    );
  static getLeftTitleData() =>
      AxisTitles(
        axisNameSize: 30,
        axisNameWidget: const Text(
          'Quantity',
          style: TextStyle(
            fontFamily: "Dm Sans",
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 5,
          interval: 3,

          getTitlesWidget: (value, meta) {
            String text ='';


            return Text(
              text,
              style: const TextStyle(
                fontFamily: "Dm Sans",
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            );

          },
        ),
      );
  static getRightTitleData() =>
      AxisTitles(
        axisNameSize: 5,
        axisNameWidget: const Text(
          'Products',
          style: TextStyle(
            fontFamily: "Dm Sans",
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 5,
          interval: 3,

          getTitlesWidget: (value, meta) {
            String text ='';


            return Text(
              text,
              style: const TextStyle(
                fontFamily: "Dm Sans",
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            );

          },
        ),
      );
  static getTopTitleData() =>
      AxisTitles(
        axisNameSize: 5,
        axisNameWidget: const Text(
          'Products',
          style: TextStyle(
            fontFamily: "Dm Sans",
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 5,
          interval: 3,

          getTitlesWidget: (value, meta) {
            String text ='';


            return Text(
              text,
              style: const TextStyle(
                fontFamily: "Dm Sans",
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            );

          },
        ),
      );

// SideTitles(
    //   showTitles: true,
    //   reservedSize: 35,
    //   getTextStyles: (value) => const TextStyle(
    //     color: Color(0xff68737d),
    //     fontWeight: FontWeight.bold,
    //     fontSize: 16,
    //   ),
    //   getTitles: (value) {
    //     switch (value.toInt()) {
    //       case 2:
    //         return 'MAR';
    //       case 5:
    //         return 'JUN';
    //       case 8:
    //         return 'SEP';
    //     }
    //     return '';
    //   },
    //   margin: 8,
    // ),
    // leftTitles: SideTitles(
    //   showTitles: true,
    //   getTextStyles: (value) => const TextStyle(
    //     color: Color(0xff67727d),
    //     fontWeight: FontWeight.bold,
    //     fontSize: 15,
    //   ),
    //   getTitles: (value) {
    //     switch (value.toInt()) {
    //       case 1:
    //         return '10k';
    //       case 3:
    //         return '30k';
    //       case 5:
    //         return '50k';
    //     }
    //     return '';
    //   },
    //   reservedSize: 35,
    //   margin: 12,
    // ),

}
