import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpGetProvider with ChangeNotifier {
  Map<String, dynamic> _data = {};
  Map<String, dynamic> get data => _data;
  int get jumlahData => _data.length;
  late Uri url;

  void connectAPI(String id, BuildContext context) async {
    url = Uri.parse("https://reqres.in/api/users/$id");
    var resultResp = await http.get(url);

    if (resultResp.statusCode == 200) {
      _data = (json.decode(resultResp.body) as Map<String, dynamic>)["data"];
      notifyListeners();
      handlingStatusCode(context, "Get data successfully!");
    } else {
      // print("Get data failed!");
      handlingStatusCode(context, "ERROR ${resultResp.statusCode}");
    }
  }

  void deleteData(BuildContext context) async {
    var resultResp = await http.delete(url);
    // print(resultResp.statusCode);
    if (resultResp.statusCode == 204) {
      _data = {}; // mengosongkan data yang ada.
      notifyListeners();
      handlingStatusCode(context, "Data are deleted!");
    }
  }

  handlingStatusCode(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}
