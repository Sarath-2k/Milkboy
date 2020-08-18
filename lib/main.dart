import 'package:flutter/material.dart';
import 'package:milk/add.dart';
import 'package:milk/buy.dart';
import 'package:milk/home.dart';
import 'package:milk/recieve.dart';

var routes = <String, WidgetBuilder>{
  "/sell": (BuildContext context) => BuyerPage(),
  "/recieve": (BuildContext context) => RecieverPage(),
  "/1": (BuildContext context) => Home(),
  "/add": (BuildContext context) => AddPage(),
};

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      routes: routes,
    );
  }
}
