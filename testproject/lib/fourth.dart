import 'package:flutter/material.dart';

class fourth extends  StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text("Fourth Screen"),  
      ),  
      body: Center(  
        child: RaisedButton(  
          color: Colors.blueGrey,  
          onPressed: () {  
            Navigator.pop(context);  
          },  
          child: Text('Go back'),  
        ),  
      ),  
    );  
  }  
}  