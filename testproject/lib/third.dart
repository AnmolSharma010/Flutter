import 'package:flutter/material.dart';
import 'package:testproject/fourth.dart';

class third extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text("Third Screen"),  
      ),  
      body: Center(  
        child: RaisedButton(  
          color: Colors.blueGrey,  
          onPressed: () {  
            Navigator.push(context,MaterialPageRoute(builder: (context) => third()));  
          },  
          child: Text('Go back'),  
        ),  
      ),  
    );  
  }  
}  