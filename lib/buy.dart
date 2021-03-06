import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:milk/home.dart';
import 'package:milk/main.dart';
import 'package:milk/services/navigator.dart';

String id =" ";

final firebaseref = Firestore.instance;

class BuyerPage extends StatefulWidget {
  @override
  _BuyerPageState createState() => _BuyerPageState();
}

class _BuyerPageState extends State<BuyerPage> {
  final myController = TextEditingController();

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    myController.addListener(setter);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  void setter(){
    setState(() {
      sellerid = myController.text;
    });
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
              firebaseref.collection("Buyers").document(sellerid).get().then((value) {
                setState(() {
                  buyername = value.data["Name"];
                  buyerphone = value.data["Phone Number"];
                  buyerpin = value.data["PIN Code"];
                  buyercredit = value.data["Credit"];
                });
              });
              MyNavigator.goToBuy2(context);
            },
            child: Text("Go"),
          ),
        ],
      )),
    );
  }
}
