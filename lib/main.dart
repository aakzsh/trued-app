import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'Data/api.dart';




void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Trued",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: homescreen(),
    );
  }
}

