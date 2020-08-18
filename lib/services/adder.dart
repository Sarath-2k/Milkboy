import 'package:cloud_firestore/cloud_firestore.dart';

final firebaseref = Firestore.instance;
void addseller(String name, String uid, String phone, String pin) {
  firebaseref.collection("Sellers").document(pin).setData({
    "Name": name,
    "Unique ID": uid,
    "Phone Number": phone,
    "PIN Code": pin,
  });
}

void addbuyer(String name, String uid, String phone, String pin) {
  firebaseref.collection("Buyers").document(pin).setData({
    "Name": name,
    "Unique ID": uid,
    "Phone Number": phone,
    "PIN Code": pin,
  });
}
