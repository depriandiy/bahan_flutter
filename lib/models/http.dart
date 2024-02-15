import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpClass {
  late String? id, name, job, createdAt;

  // 1. HTTP POST using Constructor
  HttpClass({this.id, this.name, this.job, this.createdAt});

  static Future<HttpClass> connectAPI(String name, String job) async {
    Uri url = Uri.parse("https://reqres.in/api/users");

    var resultResp = await http.post(
      url,
      body: {
        "name": name,
        "job": job,
      },
    );

    var data = json.decode(resultResp.body);
    // return data;
    return HttpClass(
      id: data["id"],
      name: data["name"],
      job: data["job"],
      createdAt: data["createdAt"],
    );
  }
}
