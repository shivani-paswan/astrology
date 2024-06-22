import 'dart:async';
import 'dart:convert';

import 'package:astrology/HomeScreen/Model/AstrologerListModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiService {
  StreamController<List<AstrologerListModel>> astroList = StreamController();
  Future<List<AstrologerListModel>> fetchData() async {
  // Future<void> fetchData() async {
    final response = await http
        .get(Uri.parse('https://dhwaniastro.democlicks.com/api/getAstrologer'));

    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      for (var element in json.entries) {
        if (element.key.toLowerCase() == "recordlist") {
          List<dynamic> arr = element.value;
          debugPrint(arr[0].toString());
          List<AstrologerListModel> resultList = List.empty(growable: true);
          for (int i = 0; i < arr.length; i++) {
            try {
              resultList.add(AstrologerListModel.fromJson(arr[i]));
            } catch (e) {
              debugPrint("ERROR FOUND AT" + i.toString());
              debugPrint(e.toString());
            }
          }
         // // List<AstrologerListModel> resultList = List.generate(
        //  //     arr.length, (index) => AstrologerListModel.fromJson(arr[index]));
        //    astroList.add(resultList);
          return resultList;
        }
      }
      return List<AstrologerListModel>.empty();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
