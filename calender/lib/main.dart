
import 'package:calendar/sixth.dart';
import 'package:flutter/material.dart';  
import './FirstScreen.dart';  
import './SecondScreen.dart';  
import './FourthScreen.dart';
import './Fifth.dart';

void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(  
        length: 5,  
        child: Scaffold(  
          appBar: AppBar(  
            title: Text('Anmol Sharma'),  
            bottom: TabBar(  
              tabs: [  
                Tab(icon: Icon(Icons.home), text: "home"),  
                Tab(icon: Icon(Icons.camera_alt), text: "Photos"),
                 Tab(icon: Icon(Icons.contacts),text: "contacts"),
                 Tab(icon: Icon(Icons.settings),text: "Setting"),
                 Tab(icon: Icon(Icons.airline_seat_flat),text: "Plane"),
              ],  
            ),  
          ),  
          body: TabBarView(  
            children: [  
              FirstScreen(),  
              SecondScreen(),
              FourthScreen(),
              Fifth(), 
              Sixth(), 
            ],  
          ),  
        ),  
      ),  
    );  
  }  
}  

