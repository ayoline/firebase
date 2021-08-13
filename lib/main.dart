import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Home.dart';

void main() async {
  // Inicializar o Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  //FirebaseFirestore db = FirebaseFirestore.instance;
  /*
  // Salva mas não gera o id unico de forma automática
  db.collection("usuarios").doc("001").set({"nome": "Fulano", "idade": "36"});

  // dessa maneira é geral um ID único.
  DocumentReference ref = await db.collection("noticias").add({
    "titulo": "Criada nova moeda virtual!",
    "descricao": "texto de exemplo...",
  });
  print("item salvo: " + ref.toString());
  
  // Deleta o documento que foi passado, no caso 001.
  //db.collection("usuarios").doc("001").delete();

  // recupera os dados do documento que foi passado. ex: 002
  DocumentSnapshot snapshot = await db.collection("usuarios").doc("002").get();
  print("nome: " + snapshot.get("nome").toString());
  print("idade: " + snapshot.get("idade").toString());
  
  // pede para o banco avisar se existe alteração, usa um for para mostrar a alterção
  db.collection("usuarios").snapshots().listen((snapshot) {
    for (DocumentSnapshot e in snapshot.docs) {
      print(e.get("nome").toString() + " " + e.get("idade").toString());
    }
  });

  // recuperar a tabela usando filtros
  QuerySnapshot querySnapshot = await db
      .collection("usuarios")
      //.where("nome", isEqualTo: "fulano")
      //.where("idade", isLessThan: 59)
      .orderBy("idade", descending: true)
      .limit(3)
      .get();
  for (DocumentSnapshot item in querySnapshot.docs) {
    print(item.get("nome").toString() + " - " + item.get("idade").toString());
  }*/
  /*
  // Autentica usuario usando email e senha no firebase
  FirebaseAuth auth = FirebaseAuth.instance;
  String usuario = "fulano@gmail.com";
  String senha = "123456";

  auth
      .createUserWithEmailAndPassword(
    email: usuario,
    password: senha,
  )
      .then((firebaseUser) {
    print("cadastrado com sucesso! e-mail: " +
        firebaseUser.user!.email.toString());
  }).catchError((error) {
    print("Novo usuario: erro " + error.toString());
  });*/

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}
