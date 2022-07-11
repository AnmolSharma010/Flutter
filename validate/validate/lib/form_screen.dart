import 'package:flutter/material.dart';

class FroemScreen extends StatefulWidget {
  const FroemScreen({ Key? key }) : super(key: key);

  @override
  _FroemScreenState createState() => _FroemScreenState();
}

class _FroemScreenState extends State<FroemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Demo")),
        body: Container(
          margin: EdgeInsets.all(24),
        ),
    );
  }
}