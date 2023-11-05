import 'package:flutter/material.dart';

class Test10 extends StatelessWidget {
  const Test10({Key? key}) : super(key: key);

  get selectedType => null;

  get type => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(
      //   width: 150,
      //
      //   child: DropdownButtonFormField(
      //     // validator: (val){
      //     //   return validInput(val!, 1, "");
      //     // },
      //     value: selectedType ,
      //     items: type
      //         .map(
      //           (e) => DropdownMenuItem(
      //         value: e,
      //         child: Text(
      //           e,
      //           style: const TextStyle(
      //             color: Colors.white,
      //             fontSize: 18,
      //             fontWeight: FontWeight.w500,
      //           ),
      //         ),
      //       ),
      //     )
      //         .toList(),
      //     onChanged: (value) {
      //
      //       if(value!.isEmpty){
      //         Get.snackbar(
      //           'Error',
      //           'Sign-in failed',
      //           duration: const Duration(seconds: 5),
      //           backgroundColor: Colors.red,
      //           colorText: Colors.white,
      //         );
      //
      //       }
      //       selectedType=value;
      //       if(value=="manager"){
      //         print("aaaaaaaaaaaaaaaaaaaaaaaaaaa");
      //         controller.isManager="1";
      //         print(controller.isManager);
      //       }
      //       else{
      //         print("sssssssssssssssssssssssssssssssssss");
      //         controller.isManager="0";
      //         print(controller.isManager);
      //       }
      //
      //     },
      //
      //     dropdownColor: Colors.purple,
      //     decoration: const InputDecoration(
      //
      //       labelText: 'Choose type employee',
      //       labelStyle: TextStyle(color: Colors.white),
      //       border:
      //       OutlineInputBorder(
      //           borderSide: BorderSide(color: Colors.red)),
      //     ),
      //   ),
      // ),
    );
  }
}
