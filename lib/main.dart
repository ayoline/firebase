import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Home.dart';

void main() async {
  // Inicializar o Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FirebaseFirestore db = FirebaseFirestore.instance;
  db.collection("usuarios").doc("pontuacao").set({"nome": "Fulano"});

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}
