import 'package:flutter/material.dart';

String recieverid = "";

class RecieverPage extends StatefulWidget {
  @override
  _RecieverPageState createState() => _RecieverPageState();
}

class _RecieverPageState extends State<RecieverPage> {
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
                recieverid = myController.text;
                print(recieverid);
              });
            },
            child: Text("Go"),
          ),
        ],
      )),
    );
  }
}
