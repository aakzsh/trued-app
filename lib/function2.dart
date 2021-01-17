import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


List <String> factcheck = ["HEY","DUDE","IDK","HOW","TO","INTEGRATE","FURTHER","SO","I'M","JUST","LEAVING","THIS","PART","FOR","YOU"];
f2(){
  return ListView(
    children: <Widget> [


      Padding(
        padding: EdgeInsets.all(5.0),
        child:  Text(
          "Fact check",
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w400,
            fontFamily: 'Times New Roman',
          ),
        ),
      ),


      for(var i in factcheck)
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: Container(
            child: Center( child: Text(i,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
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