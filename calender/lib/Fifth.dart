import 'package:flutter/material.dart';

class Fifth extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Padding(  
      padding: const EdgeInsets.all(20.0),  
      child: RaisedButton(  
        child: Text("Open to win 50"),  
        onPressed: () {  
          showAlertDialog(context);  
        },  
      ),  
    );  
  }  
}  
  
showAlertDialog(BuildContext context) {  
  // Create button  
  Widget okButton = FlatButton(  
    child: Text("OK"),  
    onPressed: () {  
      Navigator.of(context).pop();  
    },  
  );  
  
  // Create AlertDialog  
  AlertDialog alert = AlertDialog(  
    title: Text("HaHaHaHa"),  
    content: Text("Kaisa lga Mera mazak."),  
    actions: [  
      okButton,  
    ],  
  );  
  
  // show the dialog  
  showDialog(  
    context: context,  
    builder: (BuildContext context) {  
      return alert;  
    },  
  );  
}  