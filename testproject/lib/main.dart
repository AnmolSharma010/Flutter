import 'package:flutter/material.dart';
import 'package:testproject/secondScreen.dart';
 
  
void main() {  
  
  runApp(MaterialApp(  
    title: 'Flutter Navigation',  
    theme: ThemeData(  
      // This is the theme of your application.  
      primarySwatch: Colors.green,  
    ),  
    home: FirstRoute(),  
    debugShowCheckedModeBanner: false,
  ));  
}  
  
class FirstRoute extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text('First Screen'),  
      ),  
      body: Center(  
        child: RaisedButton(  
          child: Text('Click Here'),  
          color: Colors.orangeAccent,  
          onPressed: () {  
            Navigator.push(  
              context,  
              MaterialPageRoute(builder: (context) => SecondRoute()),  
            );  
          },  
        ),  
      ),  
    );  
  }  
}  