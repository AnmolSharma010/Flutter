import 'package:flutter/material.dart';  
  
class FirstScreen extends StatelessWidget { 
  final _text = TextEditingController();
  bool _validate = false;
 
  @override 
  void dispose() {
    _text.dispose();
    
  }
  @override
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(
        title: Text('Mr.Anmol'),
      ),
      body: Container(
        child: Form(
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'Enter your Name',
                  errorText: _validate ? 'Username Can\'t Be Empty' : null,
                ),
              ),
              RaisedButton(
                onPressed: () {
                  
                },
                child: Text('Submit'),
                textColor: Colors.white,
                color: Colors.blueAccent,
              )
            ],
          ),
        ),
      ),
    );  
  }  
}  