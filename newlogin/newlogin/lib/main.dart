import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(),);
}
class MaterialApp extends StatelessWidget {
  const MaterialApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}