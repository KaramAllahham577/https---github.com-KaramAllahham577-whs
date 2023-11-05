import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/product/table.dart';
import 'package:untitled3/Keeper/core/constant/app_color.dart';

import 'dart:math';

import 'package:flutter/cupertino.dart';

import 'package:syncfusion_flutter_xlsio/xlsio.dart' as xcel;




class TableProduct extends StatelessWidget{
  const TableProduct({super.key});

  @override
  Widget build(BuildContext context) {
    TableController controller = Get.put(TableController());



    DataRow resultsAPI(index, data) {
      return DataRow(
        cells: <DataCell>[
          DataCell(
            Text(
              "${controller.productList[index].state}",
              style: const TextStyle(color: Colors.white),
            ),
          ), //add name of your columns here
          DataCell(
            Text('${controller.productList[index].dateIn}',
                style: const TextStyle(color: Colors.white)),
          ),
          DataCell(
            Text(
              ' ${controller.productList[index].inQuantity}',
              style: const TextStyle(color: Colors.white),
            ),
          ),
          DataCell(
            Text(' ${controller.productList[index].totalCost}\$',
                style: const TextStyle(color: Colors.white)),
          )
        ],
      );
    }

    Future<void> generateAndSaveExcel() async {
      final xcel.Workbook workbook = xcel.Workbook();
      final xcel.Worksheet sheet = workbook.worksheets[0];
      String excelFile = 'test ${Random().nextInt(100)}';

      sheet.getRangeByIndex(1, 1).setText('in or out');
      sheet.getRangeByIndex(1, 2).setText('Date');
      sheet.getRangeByIndex(1, 3).setText('Quantity');
      sheet.getRangeByIndex(1, 4).setText('price');

      for (var i = 0; i < controller.productList.length; i++) {
        sheet
            .getRangeByIndex(i + 2, 1)
            .setText("${controller.productList[i].state}");
        sheet
            .getRangeByIndex(i + 2, 2)
            .setText("${controller.productList[i].dateIn}");
        sheet
            .getRangeByIndex(i + 2, 3)
            .setText("${controller.productList[i].inQuantity}");
        sheet
            .getRangeByIndex(i + 2, 4)
            .setText("${controller.productList[i].totalCost}\$");
      }

      // save the document in the downloads file
      final List<int> bytes = workbook.saveAsStream();
      File('/storage/emulated/0/Documents/$excelFile.xlsx').writeAsBytes(bytes);

      Fluttertoast.showToast(
        msg:
        'Excel file successfully downloaded in this path storage/emulated/0/Documents/$excelFile.xlsx ',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        backgroundColor:Color(0xFF13325b) ,
        textColor: Color(0xFFFFFFFF),
      );

      //dispose the workbook
      workbook.dispose();
    }

    void downloadExcelDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: const Text(
              'You are about to download the results excel sheet. Proceed?'),
          //content: const Text('Proceed?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                generateAndSaveExcel();
                Navigator.of(context).pop();
              },
              child: const Text('Yes'),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Table'),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        color: AppColor.backGround,
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: GetBuilder<TableController>(
              builder: (controller) {
                if (controller.isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Theme(
                        data: Theme.of(context).copyWith(
                          dividerColor:
                          AppColor.color3, // Change divider color here
                        ),
                        child: DataTable(
                            border: TableBorder.all(
                              width: 5.0,
                              color: AppColor.color2,
                            ),
                            dataRowHeight: 50,
                            dividerThickness: 3,
                            headingRowColor:
                            MaterialStateProperty.all(Colors.grey),
                            columns: const <DataColumn>[
                              DataColumn(
                                  label: Text(
                                    "stat ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )),
                              DataColumn(
                                  label: Text(
                                    "date ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )),
                              DataColumn(
                                  label: Text(
                                    "Quantity ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )),
                              DataColumn(
                                  label: Text(
                                    "price ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ))
                            ],
                            rows: List.generate(
                              controller.productList.length,
                                  (index) => resultsAPI(
                                index,
                                controller.productList,
                              ),
                            )),
                      ),
                    ],
                  );
                }
              },
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          downloadExcelDialog(context);
        },
        backgroundColor: AppColor.color2,
        child: const Icon(
          CupertinoIcons.tray_arrow_down,
          color: Colors.white,
        ),
      ),
    );
  }
}
