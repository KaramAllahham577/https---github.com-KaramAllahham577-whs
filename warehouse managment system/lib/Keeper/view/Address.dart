import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:untitled3/Keeper/core/constant/const.dart';

import '../controller/test_controller.dart';

class Country {
  final int id;
  final String country;

  Country({required this.id, required this.country});

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      id: json['id'],
      country: json['country'],
    );
  }
}

class City {
  final int id;
  final String city;
  final Country country;

  City({required this.id, required this.city, required this.country});

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      id: json['id'],
      city: json['city'],
      country: Country.fromJson(json['countries']),
    );
  }
}

class Region {
  final int id;
  final String region;
  final City city;

  Region({required this.id, required this.region, required this.city});

  factory Region.fromJson(Map<String, dynamic> json) {
    return Region(
      id: json['id'],
      region: json['region'],
      city: City.fromJson(json['cities']),
    );
  }
}

class Address {
  final int id;
  final String address;
  final Region region;

  Address({required this.id, required this.address, required this.region});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      id: json['id'],
      address: json['address'],
      region: Region.fromJson(json['regions']),
    );
  }
}
class ApiService {
  static const String baseUrl = 'your_api_url_here';

  static Future<List<Address>> getAddresses() async {
    final response = await http.get(Uri.parse('http://$Ip:8000/api/managers/show/addresses'),  headers: {'Authorization': 'Bearer $Token'},);

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body)['data'];
      return jsonData.map((json) => Address.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load addresses');
    }
  }
}
class AddressController extends GetxController {
  var addresses = <Address>[].obs;
  var selectedAddress = Rx<Address?>(null);

  @override
  void onInit() {
    super.onInit();
    fetchAddresses();
  }

  Future<void> fetchAddresses() async {
    try {
      addresses.value = await ApiService.getAddresses();

      // Set initial selectedAddress value to null
      selectedAddress.value = null;
    } catch (e) {
      // Handle error
    }
  }
}

class AddressDropdown extends StatelessWidget {
  final AddressController addressController = Get.put(AddressController());

  @override
  Widget build(BuildContext context) {
    StorageController box= StorageController();
    return

      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              final addresses = addressController.addresses;

              return DropdownButtonFormField<Address>(
                hint:const Text("asdf",style: TextStyle(color: Colors.white),) ,
                dropdownColor: const Color(0xff24292f),
                menuMaxHeight: 200,
                iconSize: 32,
                iconEnabledColor: Colors.white,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xff53676D),
                      width: 2.5,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color:Color(0xff6a040f),
                      width: 2.5,
                    ),
                  ),
                ),
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 0,
                style: const TextStyle(
                  fontFamily: "Dm Sans",
                  fontSize: 17.75,
                  color: Colors.white,
                ),
                value: addressController.selectedAddress.value,
                onChanged: (newValue) {
                  if (newValue != null) {
                    addressController.selectedAddress.value = newValue;
                    if (newValue.id == 0) {
                      // Handle "Select address" selection
                      addressController.selectedAddress.value = null;
                    } else {
                      // Print the selected address's ID
                      box.storage("idsou", newValue.id);
                      print('Selected Address ID: ${newValue.id}');
                    }
                  }
                },
                items: [
                  const DropdownMenuItem<Address>(
                    value: null,
                    child: Text("Select address"),
                  ),
                  ...addresses.map<DropdownMenuItem<Address>>((Address address) {
                    return DropdownMenuItem<Address>(
                      value: address,
                      child: Text(address.region.city.country.country),
                    );
                  }).toList(),
                ],
              );
            }),

          ],
        ),

    );
  }
}
