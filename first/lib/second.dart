import 'package:flutter/material.dart';

void main()
{
  runApp(
    Material(
      color: Colors.blueAccent,
      child: Center(
      child: Text(
        "I am Anmol Sharma",
        textDirection: TextDirection.ltr,
      style: TextStyle(color: Colors.white,fontSize: 30.0) 
      )
    )
    )
  );
}