import 'package:flutter/material.dart';


class MyFirstPage extends StatefulWidget {
  const MyFirstPage({ Key? key }) : super(key: key);

  @override
  State<MyFirstPage> createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, 'login');
              },
              child: Text('Login'),
            ),
            SizedBox(
              height: 30,
              width: 20,
            ),
             ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, 'register');
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}