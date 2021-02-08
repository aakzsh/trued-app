import 'dart:convert';

import 'package:http/http.dart' as http;

import 'data.dart';

class HelperClass {
  Future<dynamic> search(String search) async {
    var url =
        'https://factchecktools.googleapis.com/v1alpha1/claims:search?query=$search&key=$apikey';
    Api helper = Api(url: url);

    helper.factchecks();
  }
}

const apikey = 'AIzaSyAhfMM31uEyuK8lqRFcpOOr0Wk61TuVyn8';

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
