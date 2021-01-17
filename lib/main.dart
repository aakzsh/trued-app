import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'package:http/http.dart' as http;





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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget> [
          Image.asset(
            'assets/abcd.jpg',
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: <Widget> [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Image.asset(
                  'assets/logo2.png',
                  height: 250.0,
                  width: 350.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0.0),
                child: Stack(
                  children: <Widget> [
                    SingleChildScrollView(
                      child:  Container(
                        height: 300,
                        width: 320,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 10.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular( 30.0),
                        ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget> [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 25.0,
                              ),
                              child:    TextField(
                                autocorrect: false,
                                autofocus: false,
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                                decoration: InputDecoration(
                                  hintText: "Username",
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  contentPadding: EdgeInsets.all(15.0),
                                ),
                              ),

                            ),
                            TextField(
                              autocorrect: false,
                              autofocus: false,
                              obscureText: true,
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                              decoration: InputDecoration(
                                hintText: "Password",
                                border: InputBorder.none,
                                filled: true,

                                fillColor: Colors.grey[200],
                                contentPadding: EdgeInsets.all(15.0),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget> [
                                  Text(
                                    "Create new account",
                                    style: TextStyle(
                                      fontSize: 14.0,

                                    ),
                                  ),
                                ],
                              ),
                            ),
                            MaterialButton(
                              hoverColor: Colors.blue,
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(       //press karne pe navigate karne ke liye
                                  builder: (context) => homescreen(),

                                ),
                                );
                              },
                              minWidth: 250.0,
                              color: Colors.red[300],
                              padding: EdgeInsets.symmetric(
                                vertical: 10.0,
                              ),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,

                                ),

                              ),
                            ),
                          ],

                        ),

                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ],
      ),   //to place one on top of other
    );
  }
}

