import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(),
    );
  }
}
class SafeArea extends StatefulWidget {
  SafeArea({ Key? key }) : super(key: key);

  @override
  State<SafeArea> createState() => _SafeAreaState();
}

class _SafeAreaState extends State<SafeArea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
          title: Text("Anmol"),
         ),
         
    );
    SafeArea(
      child:Text('Your Name'),
    );
  }
}
