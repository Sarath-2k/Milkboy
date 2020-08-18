import 'package:flutter/material.dart';

class MyNavigator {
  static void goToHome(BuildContext context) {
    Navigator.pushNamed(context, "/1");
  }

  static void goToSell(BuildContext context) {
    Navigator.pushNamed(context, "/sell");
  }
  
  static void goToRecieve(BuildContext context) {
    Navigator.pushNamed(context, "/recieve");
  }
  static void goToAdd(BuildContext context) {
    Navigator.pushNamed(context, "/add");
  }
  static void goToRecieve2(BuildContext context) {
    Navigator.pushNamed(context, "/buy2");
  }
  static void goToBuy2(BuildContext context) {
    Navigator.pushNamed(context, "/recieve2");
  }
}
