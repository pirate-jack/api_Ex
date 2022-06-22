import 'dart:convert';

import 'package:jobs/Link.dart';
import 'package:jobs/Resp.dart';
import 'package:http/http.dart' as http;

class APIService {
  Future<Welcome> ImgData() async {
    String url = Linkurl.url + "users?page=2";
    var result = await http.get(Uri.parse(url));
    print(result.body);
    var res = jsonDecode(result.body);
    Welcome model = Welcome.fromJson(res);
    return model;
  }
}
