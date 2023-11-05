

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/search_controller.dart';
import 'package:untitled3/Keeper/view/widget/my_branch/body.dart';

import 'auth/register_page.dart';

class MyBranch extends StatelessWidget {
  const MyBranch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SearchController());
    TextEditingController myController = TextEditingController();
    return Scaffold(
      backgroundColor:Color(0xff161a1d) ,
      drawer: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
        child: Container(
          width: 250,
          color: const Color(0xff6a040f),
          child: Column(
            children: [
              const SizedBox(height: 50.0),

              const ListTile(
                leading: CircleAvatar(

                  backgroundColor: Colors.white60,
                  child: Icon(Icons.person,color: Colors.white,),
                ),
                title: Text("Name: abd",style: TextStyle(color: Colors.white),),
              ),

              Container(
                margin: const EdgeInsets.only(bottom: 10,top: 10),
                color: Colors.white60,
                child: ListTile(


                  leading: const Icon(Icons.person),
                  title: const Text('Add an Account'),
                  onTap: () {Get.to(RegisterPage());},
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10,top: 10),
                color: Colors.grey[200],
                child: ListTile(
                  leading: const Icon(Icons.exit_to_app_outlined),
                  title: const Text('Log Out'),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(


        elevation: 2,
        title: const Text(
          "My Branch",
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: const Body() ,
    );
  }
}
