import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: database(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class database extends StatefulWidget {
  const database({ Key? key }) : super(key: key);

  @override
  State<database> createState() => _databaseState();
}

class _databaseState extends State<database> {
 
  final db = Firestore.instance;

  void showDialog(){}
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: showDialog,
      child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("CRUD"),
      ),
      body: Center(
        child: Text("Flutter"),
      ),
    );
  }
}

class Firestore {
  static var instance;
}