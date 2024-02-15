import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeProvider with ChangeNotifier {
  // HTTP Post using Provider
  Map<String, dynamic> _data = {};
  Map<String, dynamic> get data => _data;

  int get jumlahData => _data.length;

  void connectAPI(String name, String job) async {
    Uri url = Uri.parse("https://reqres.in/api/users");

    var resultResp = await http.post(
      url,
      body: {
        "name": name,
        "job": job,
      },
    );

    _data = json.decode(resultResp.body);
    notifyListeners();
  }
}
