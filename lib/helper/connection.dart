import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:practice/model/get.dart';

class Helper {
  Future<List<Get>?> apiGetData() async {
    var response = await http
        .get(Uri.parse('http://172.21.224.1/laravel-project/public/api/data'));
    print(response.body);
    if (response.statusCode == 200) {
      var data = response.body;
      var name = jsonDecode(data)['name'];
      var id = jsonDecode(data)['id'];
      var dept = jsonDecode(data)['dept'];
      var batch = jsonDecode(data)['batch'];
    } else {
      print(response.statusCode);
    }
  }
}
