import 'package:flutter/material.dart';


class MyRegisterPage extends StatefulWidget {
  const MyRegisterPage({ Key? key }) : super(key: key);

  @override
  State<MyRegisterPage> createState() => _MyRegisterPageState();
}

class _MyRegisterPageState extends State<MyRegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Page"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 30,right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email'
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
              SizedBox(
              height: 30,
              width: 20,
            ),
              ElevatedButton(
                onPressed: (){},child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}