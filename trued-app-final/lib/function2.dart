import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

List <String> factcheck = ["HEY","DUDE","IDK","HOW","TO","INTEGRATE","FURTHER","SO","I'M","JUST","LEAVING","THIS","PART","FOR","YOU"];
f2(){
  return WebView(initialUrl: "https://toolbox.google.com/factcheck/explorer",
  javascriptMode: JavascriptMode.unrestricted,
  );

}