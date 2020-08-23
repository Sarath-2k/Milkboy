import 'package:flutter/material.dart';
import 'package:milk/services/navigator.dart';

String buyername = " ";
String buyerphone = " ";
String buyerpin = " ";
int buyercredit ;

String sellername = " ";
String sellerphone = " ";
String sellerpin = " ";
int sellercredit;

int quantity = 0;
int cost = 0;
int totalcost = quantity * cost;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MILKBOY"),
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  MyNavigator.goToAdd(context);
                },
                icon: Icon(Icons.add),
                label: Text("Add"))
          ],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                MyNavigator.goToRecieve(context);
              },
              child: Text("Recieve"),
            ),
            RaisedButton(
              onPressed: () {
                MyNavigator.goToSell(context);
              },
              child: Text("Sell"),
            )
          ],
        )));
  }
}
