import 'package:flutter/material.dart';

import 'equipment_fixes_history.dart';
import 'equipment_information.dart';


class Equipment_Details extends StatelessWidget {
  Equipment_Details();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Change this to 2, as you have 2 tabs
      child: Scaffold(
          backgroundColor: const Color(0xff161a1d),
          appBar: AppBar(
            bottom: TabBar(
              indicatorColor: Color(0xff6a040f),
              tabs: [
                Tab(
                  height: 60,
                  child: Container(
                    margin: EdgeInsets.all(8),
                    width: 140,
                    height: 90,
                    child: Image.asset(
                      'assets/images/icons/equipment_information.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Tab(
                  height: 60,
                  child: Container(
                    margin: EdgeInsets.all(8),
                    width: 140,
                    height: 90,
                    child: Image.asset(
                      'assets/images/icons/fixes_history.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
            elevation: 10,
            backgroundColor: const Color(0xff161a1d),
            title: Center(
              child: Text(
                ' Scouts',
                style: TextStyle(
                  fontFamily: "DM Sans",
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            actions: [
              SizedBox(
                width: 10,
              ),
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {},
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
          body: TabBarView(children: [
            Equipment_Information(),
            EquipmentFixesHistory(),
          ])),
    );
  }
}
