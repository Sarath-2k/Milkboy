import 'package:flutter/material.dart';
import 'package:milk/services/adder.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final namecont = TextEditingController();
  final uidcont = TextEditingController();
  final phonecont = TextEditingController();
  final pincont = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    namecont.dispose();
    uidcont.dispose();
    phonecont.dispose();
    pincont.dispose();
    super.dispose();
  }

  String name = "";
  String uid = "";
  String phone = "";
  String pin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextField(
          controller: namecont,
          decoration: new InputDecoration.collapsed(hintText: 'Name'),
        ),
        TextField(
          controller: uidcont,
          decoration: new InputDecoration.collapsed(hintText: 'UniqueID'),
        ),
        TextField(
          controller: phonecont,
          decoration: new InputDecoration.collapsed(hintText: 'Phonenumber'),
        ),
        TextField(
          controller: pincont,
          decoration: new InputDecoration.collapsed(hintText: 'PIN code'),
        ),
        RaisedButton(
          onPressed: () {
            setState(() {
              name = namecont.text;
              uid = uidcont.text;
              phone = phonecont.text;
              pin = pincont.text;
            });
            addseller(name,uid,phone,pin);
          },
          child: Text("Suplier Add"),
        ),
        RaisedButton(
          onPressed: () {
            setState(() {
              name = namecont.text;
              uid = uidcont.text;
              phone = phonecont.text;
              pin = pincont.text;
            });
            addbuyer(name,uid,phone,pin);
          },
          child: Text("Buyer Add"),
        )
      ],
    )));
  }
}
