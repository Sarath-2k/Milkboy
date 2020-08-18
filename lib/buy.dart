import 'package:flutter/material.dart';
import 'package:milk/main.dart';
import 'package:milk/services/navigator.dart';

class BuyerPage extends StatefulWidget {
  @override
  _BuyerPageState createState() => _BuyerPageState();
}

class _BuyerPageState extends State<BuyerPage> {
  final myController = TextEditingController();

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
              setState(() {
                sellerid = myController.text;
                print(sellerid);
              MyNavigator.goToBuy2(context);
              });
            },
            child: Text("Go"),
          ),
        ],
      )),
    );
  }
}
