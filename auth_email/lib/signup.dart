import 'package:auth_email/homepage.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({ Key? key }) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String email ="";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Email"
            ),
            onChanged: (value){
              setState(() {
                email=value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "password",
            ),
            onChanged: (value){
              setState(() {
                password=value;
              }
              );
            },
            obscureText : true,  
          ),
          
          FlatButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Homepage()));
            }, 
            child: Text("Signup"),),
        ],
      ),
    );
  }
}