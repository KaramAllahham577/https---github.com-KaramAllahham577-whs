
import 'package:flutter/material.dart';

class Equipment_Search extends SearchDelegate{

  List<String> equipment_list =[
    'Scouts','Led ','flashes'

  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    IconButton(
      icon: Icon(
        Icons.clear,
      ),
      onPressed: (){
        query='';
      },
    );
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
      icon: Icon(
        Icons.arrow_back,
      ),
      onPressed: (){
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }
  
}