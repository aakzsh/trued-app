import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main_drawer.dart';

import 'function1.dart';
import 'function2.dart';


class homescreen extends StatefulWidget {
  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(

        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(0.0),
                gradient: LinearGradient(
                    colors: [Colors.red, Colors.green[900]]
                ),
              ),
            ),

            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget> [

           Align(
             alignment: Alignment.centerLeft,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: <Widget>[
Padding(
  padding: EdgeInsets.symmetric(horizontal: 10.0),
  child:
  Container(
    decoration: BoxDecoration(
      color: Colors.white,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular( 30.0),
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Search",
        border: InputBorder.none,
        filled: true,
        contentPadding: EdgeInsets.all(15.0),
      ),
    ),
    height: 50,
    width: 150,

  ),
),
                 Image.asset(

                   'assets/logo2.png',

                   height: 70,
                   width: 100,
                 ),
               ],
             )

           ),



              ],
            ),

            bottom: TabBar(
              isScrollable: true,
              tabs: choices.map<Widget>((Choice choice){
                return Tab(
                  text: choice.title,
                  icon: Icon(choice.icon),
                );
              }).toList(),

            ),
          ),

          drawer: MainDrawer(),
          body:  TabBarView(
            children: choices.map((Choice choice){
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: ChoicePage(
                  choice: choice,
                ),
              );

            }).toList(),
          ),

        ),
      ),
    );
  }
}




class Choice {
  final String title;
  final IconData icon;
  final int b;

  Choice({this.title, this.icon, this.b});



}

List<Choice> choices = <Choice> [
  Choice(title: 'CLAIMS', icon: Icons.book, b: 1,

  ),

  Choice(title: 'FACT CHECK', icon: Icons.done_all, b: 2),



];

class ChoicePage extends StatelessWidget{
  const ChoicePage({Key key, this.choice}): super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final TextStyle textStyle = Theme.of(context).textTheme.display1;

    if(choice.b == 1){
      return f1();
    }
    if(choice.b == 2){
      return f2();
    }



  }
}


