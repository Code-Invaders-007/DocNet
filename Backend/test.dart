// flutter crud operation using flutterfire

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';


//function to write data to Cloud Firestore
void writeData() {
  //create a new document with a unique ID
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection("users");
  collectionReference.add({
    'name': 'John Doe',
    'age': 42,
    'email': '
  });
}

//function to read data from Cloud Firestore
void readData() {
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection("users");
  collectionReference.get().then((QuerySnapshot querySnapshot) {
    querySnapshot.docs.forEach((doc) {
      print(doc["name"]);
      print(doc["age"]);
      print(doc["email"]);
    });
  });
}

