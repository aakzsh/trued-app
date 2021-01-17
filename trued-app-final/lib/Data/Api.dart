import 'dart:convert';

import 'package:http/http.dart' as http;

import 'data.dart';

class Api {
  Api({
    this.url,
  });

  String url;

  Future<Data> factchecks() async {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      print('success');
     
      return Data.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load Results');
    }
  }
}
