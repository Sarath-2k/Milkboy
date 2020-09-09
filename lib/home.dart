import 'package:flutter/material.dart';
import 'package:milk/services/navigator.dart';

String buyername = " ";
String buyerphone = " ";
String buyerpin = " ";
double buyercredit;

String sellername = " ";
String sellerphone = " ";
String sellerpin = " ";
double milkprice;
double sellercredit;

double quantity = 0;
double cost = 0;
double totalcost = 0;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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

  void setter() {
    setState(() {
      milkprice = double.parse(myController.text);
    });
  }

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
            ),
            TextField(
              controller: myController,
              decoration:
                  new InputDecoration.collapsed(hintText: "Today's Milk Price"),
              keyboardType: TextInputType.numberWithOptions(
                decimal: true,
                signed: false,
              ),
            )
          ],
        )));
  }
}
