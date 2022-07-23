import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'first.dart';
import 'login.dart';
import 'register.dart';

void main() async{
 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
runApp(MaterialApp(
  initialRoute: 'first',
  routes: {
    'first':(context) => MyFirstPage(),
    'register':(context) => MyRegisterPage(),
    'login':(context) => MyLoginPage(),
  },
));
}