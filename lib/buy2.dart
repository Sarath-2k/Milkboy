import 'package:flutter/material.dart';
import 'package:milk/main.dart';

class BuyConf extends StatefulWidget {
  @override
  _BuyConfState createState() => _BuyConfState();
}

class _BuyConfState extends State<BuyConf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(sellerid),
        ],
      )),
    );
  }
}
