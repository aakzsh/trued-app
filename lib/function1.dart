import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trued/Data/data.dart';

List<String> message = [
  "HEY",
  "DUDE",
  "IDK",
  "HOW",
  "TO",
  "INTEGRATE",
  "FURTHER",
  "SO",
  "I'M",
  "JUST",
  "LEAVING",
  "THIS",
  "PART",
  "FOR",
  "YOU"
];
f1( ) {
  return ListView(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(5.0),
        child: Text(
          "Following claims are found",
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w400,
            fontFamily: 'Times New Roman',
          ),
        ),
      ),
      for (var i in message)
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: Container(
            child: FutureBuilder<Data>(
             //  future: futureData,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                 // print(snapshot.data.title);
                  //print(snapshot.data.url);
                  
                  return Text(snapshot.data.title);
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }

                // By default, show a loading spinner.
                return CircularProgressIndicator();
              },
            ),
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
    ],
  );
}
