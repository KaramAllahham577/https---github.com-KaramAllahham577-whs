import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../../core/constant/app_color.dart';
import '../screen/employee/view-employee.dart';

class CustomSpeedDial extends StatelessWidget {
  const CustomSpeedDial({Key? key,required this.text, required this.onTapDel, required   this.onTapAdd}) : super(key: key);

 final void Function()? onTapDel;
 final void Function()? onTapAdd;
  final String text;


  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> isDialogOpen = ValueNotifier(false);
    return  SpeedDial(
      backgroundColor: AppColor.color2,
      elevation: 100,
      curve: Curves.bounceIn,
      overlayColor: Colors.black,
      overlayOpacity: 0.6,
      icon: Icons.add,
      activeIcon: Icons.close,
      buttonSize: const Size.fromRadius(30),
      openCloseDial: isDialogOpen,
      renderOverlay: true,
      spacing: 10,
      spaceBetweenChildren: 5,
      childrenButtonSize: const Size.fromRadius(35),
      animationDuration: const Duration(milliseconds: 250),
      children: [
        SpeedDialChild(
          label: 'Add ${text}',
          labelBackgroundColor: Colors.blueAccent,
          labelStyle: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          child: const Icon(Icons.category),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          onTap: onTapAdd
        ),
        SpeedDialChild(
          label: 'Delete ${text}',
          labelBackgroundColor: Colors.red,
          labelStyle: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          child: const Icon(
            Icons.delete_forever,
            size: 30,
          ),
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          onTap: onTapDel,
        ),
      ],
    );
  }
}
