
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'data.dart';

class Api {


  Api({
    this.url,
  });
 
String url;
 

Future<Data> factchecks() async {
  final response =
      await http.get(url);

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    print('success');
    print(response.body);
    print('hello check');
    return Data.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load Results');
  }


}
}
