import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:milk/main.dart';
import 'package:milk/services/navigator.dart';

import 'home.dart';

final firebaseref = Firestore.instance;

class RecieverPage extends StatefulWidget {
  @override
  _RecieverPageState createState() => _RecieverPageState();
}

class _RecieverPageState extends State<RecieverPage> {
  final myController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myController.addListener(setter);
  }

  void setter() {
    setState(() {
      sellerid = myController.text;
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            onPressed: () {},
            child: Text("QR"),
          ),
          TextField(
            controller: myController,
          ),
          RaisedButton(
            onPressed: () {
              firebaseref
                  .collection("Sellers")
                  .document(sellerid)
                  .get()
                  .then((value) {
                setState(() {
                  sellername = value.data["Name"];
                  sellerphone = value.data["Phone Number"];
                  sellerpin = value.data["PIN Code"];
                  sellercredit = value.data["Credit"];
                });
              });
              MyNavigator.goToRecieve2(context);
            },
            child: Text("Go"),
          ),
        ],
      )),
    );
  }
}
