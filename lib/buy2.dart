import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:milk/buy.dart';
import 'package:milk/home.dart';
import 'package:milk/main.dart';

class BuyConf extends StatefulWidget {
  @override
  _BuyConfState createState() => _BuyConfState();
}

class _BuyConfState extends State<BuyConf> {
  final qty = TextEditingController();
  final price = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    qty.dispose();
    price.dispose();

    super.dispose();
  }

  void qtysetter() {
    setState(() {
      quantity = qty.text as int;
      totalcost = quantity * cost;
    });
  }

  void pricesetter() {
    setState(() {
      cost = price.text as int;
      totalcost = quantity * cost;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    qty.addListener(qtysetter);
    price.addListener(pricesetter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(sellerid),
          Text(buyername),
          Text(buyerpin),
          Text(buyerphone),
          TextField(
            controller: qty,
            decoration: new InputDecoration(labelText: "Enter quantity"),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ], // Only numbers can be entered
          ),
          TextField(
            controller: price,
            decoration: new InputDecoration(labelText: "Enter price"),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ], // Only numbers can be entered
          ),
          Text(totalcost.toString()),
          RaisedButton(
              onPressed: () {
                firebaseref
                    .collection("Buyers")
                    .document(sellerid)
                    .updateData({"Credit": totalcost + buyercredit});
              },
              child: Text("Credit")),
          RaisedButton(
              onPressed: () {}, child: Text("Recieved Payment of $totalcost")),
          RaisedButton(
              onPressed: () {}, child: Text("Recieved Payment of $totalcost+$buyercredit")),
        ],
      )),
    );
  }
}
