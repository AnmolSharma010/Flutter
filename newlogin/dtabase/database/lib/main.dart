import 'package:flutter/material.dart';

void main(){
  runApp(MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyApp();
    home: MaterialApp();
  }
} 

class MaterialApp extends StatefulWidget {
  const MaterialApp({ Key? key }) : super(key: key);

  @override
  State<MaterialApp> createState() => _MaterialAppState();
}

class _MaterialAppState extends State<MaterialApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Image(image: AssetImage('assets/hand.jpg'),
            ),
          ],
        ),
      ),
      
    );
  }
}