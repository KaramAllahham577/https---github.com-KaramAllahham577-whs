import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/branches_view/branches_view_controller.dart';
import 'package:untitled3/Keeper/view/widget/auth/custom_text_field.dart';

import '../../../core/function/validator.dart';

class BranchesView extends StatelessWidget {
  const BranchesView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Branches'),
      ),
      body: GetBuilder<BranchesController>(builder: (controller) {
        if (controller.check) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Check Your Internet"),
                TextButton(
                    onPressed: () {
                      controller.getData();
                    },
                    child: const Text("refresh"))
              ],
            ),
          );
        }
        return controller.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : GridView.builder(
                padding: const EdgeInsets.all(16.0),
                itemCount: controller.branchesList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  print(controller.branchesList.length);
                  return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.grey[200],
                      ),
                      child: Center(
                        child: ListTile(
                          title: Text(controller.branchesList[index].address
                              .toString()),
                          subtitle: Text(controller
                              .branchesList[index].phoneNumber
                              .toString()),
                        ),
                      ));
                });
      }),

    );
  }
}
