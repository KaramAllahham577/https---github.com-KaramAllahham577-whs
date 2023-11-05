import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/branches_view/branches_view_controller.dart';
import 'package:untitled3/Keeper/core/constant/image_asset.dart';
import 'package:untitled3/Keeper/view/screen/home/branches_view.dart';

import '../../widget/home/custom_list_tile.dart';
import '../auth/register_page.dart';

class HomePage10 extends StatelessWidget {
  const HomePage10({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff5ac18e),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0x665ac18e),
              Color(0x995ac18e),
              Color(0xcc5ac18e),
              Color(0xff5ac18e),
            ],
          ),
        ),
        child: ListView(
          children: [Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              Expanded(
                child: CustomListTile(
                  image: ImageAsset.onBoardingImageOne,
                  text: 'Branches',
                  onPressed: () {
                    Get.to( const BranchesView());
                  },
                ),
              )
            ],
          )],
        ),
      ),
      drawer: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
        child: Container(
          width: 250,
          color: const Color(0xff80e2ae),
          child: Column(
            children: [
              const SizedBox(height: 50.0),

             const ListTile(
              leading: CircleAvatar(

                backgroundColor: Colors.white54,
                child: Icon(Icons.person,color: Colors.white,),
              ),
              title: Text("Name: abd",style: TextStyle(color: Colors.white),),
            ),

              Container(
                margin: const EdgeInsets.only(bottom: 10,top: 10),
                color: Colors.grey[200],
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
    );
  }
}
