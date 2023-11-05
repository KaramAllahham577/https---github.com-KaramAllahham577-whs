import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled3/General/view/screen/producing_companies/producingcompaniesdetails.dart';

import '../../../../Keeper/view/widget/storage_location/storingLocationsCard.dart';
import '../../../controller/companies/show_companies_controller.dart';
import '../../widget/ProducingCompaniesCard.dart';


class ShowProducingCompanies extends StatelessWidget {
  const ShowProducingCompanies({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ShowCompaniesControllerGeneral());
    return Scaffold(
      backgroundColor: const Color(0xFF161A1D),
      appBar: AppBar(
        backgroundColor: const Color(0xFF161A1D),
        automaticallyImplyLeading: false,
        title: const Text(
          'Producing Companies',
          style: TextStyle(
            fontFamily: 'Outfit',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                width: 496,
                decoration: const BoxDecoration(
                  color: Color(0xFF161A1D),
                ),
                child: GetBuilder<ShowCompaniesControllerGeneral>(
                  builder: (controller){
                    if(controller.isLoading){
                      return Center(child: CircularProgressIndicator(),);
                    }
                    else{
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        itemCount: controller.companiesList.length, // Replace with your actual item count
                        itemBuilder: (BuildContext context, int index) {
                          final company= controller.companiesList[index];
                          return GestureDetector(
                              onTap: (){
                                Get.to( ProducingCompaniesDetails( company:controller.companiesList[index],));
                              },
                              child:  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ProducingCompaniesCard(name: company.companyName!, code: company.companyCode!,

                                ),
                              )
                          );
                        },
                      );
                    }
                  },
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
