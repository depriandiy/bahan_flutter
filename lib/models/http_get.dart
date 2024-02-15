import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpGet {
  late String? id, fullname, email, avatar;

  HttpGet({this.id, this.fullname, this.email, this.avatar});

  static Future<HttpGet> connectAPI(String id) async {
    Uri url = Uri.parse("https://reqres.in/api/users/$id");

    var resultResp = await http.get(url);

    var data = (json.decode(resultResp.body) as Map<String, dynamic>)["data"];
    // print(data);
    return HttpGet(
      id: data["id"].toString(),
      fullname: data["first_name"] + " " + data["last_name"],
      email: data["email"],
      avatar: data["avatar"],
    );
  }
}
