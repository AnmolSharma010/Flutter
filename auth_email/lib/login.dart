import 'package:auth_email/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = "";
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

            }, child: Text("Signin"),
          ),
          FlatButton(
            onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signup()));
            },
             child: Text("Signup"))
        ],
      ),
    );
  }
}