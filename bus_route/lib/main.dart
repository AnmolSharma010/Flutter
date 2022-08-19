import 'dart:async';
import 'package:bus_route/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return MaterialApp(
	title: 'Bus Route',
	theme: ThemeData(
		primarySwatch: Colors.green,
	),
	home: MyHomePage(),
	debugShowCheckedModeBanner: false,
	);
}
}

class MyHomePage extends StatefulWidget {
@override
_MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
@override
void initState() {
	super.initState();
	Timer(Duration(seconds: 1),
		()=>Navigator.pushReplacement(context,
										MaterialPageRoute(builder:
														(context) =>
														Loginpage()
														)
									)
		);
}
@override
Widget build(BuildContext context) {
	return Container(
	decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://c1.wallpaperflare.com/preview/442/857/84/bus-silhouette-bus-ride-window-seat.jpg"),
            fit :BoxFit.cover
          ),
        ),
       child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
  'Welcome to Bus Navigation App',
  style: GoogleFonts.lato(
    textStyle: Theme.of(context).textTheme.headline4,
    fontSize: 48,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.italic,
    color: Colors.amberAccent
  ),
),
            ],
          ),
          
          SizedBox( 
            height: 500,
          ),
          Text("Processing...",style: TextStyle(fontSize: 10,color: Colors.amber),)
          
        ],
       ),
       );
}
}
