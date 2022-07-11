import 'package:flutter/material.dart';
import 'package:testproject/third.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blueGrey,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => third()));
          },
          child: Text(' Next'),
        ),
      ),
    );
  }
}
