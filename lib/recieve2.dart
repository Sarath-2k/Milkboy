import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:milk/main.dart';
class RecieveConf extends StatefulWidget {
  @override
  _RecieveConfState createState() => _RecieveConfState();
}

class _RecieveConfState extends State<RecieveConf> {
  final firestoreref = Firestore.instance;
  getrecieverdata() {}
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getrecieverdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(recieverid),
        ],
      )),
    );
  }
}
