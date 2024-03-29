import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
         home: Home()
      );
  }
}

class Home extends  StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? gender; //no radio button will be selected
  //String gender = "male"; //if you want to set default value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Radio Button in Flutter"),
            backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Container( 
            padding: EdgeInsets.all(20),
            child: 
          Row(
            children: [
                
                
           
                
                RadioListTile(
                    title: Text("Male"),
                    value: "male", 
                    groupValue: gender, 
                    onChanged: (value){
                      setState(() {
                          gender = value.toString();
                      });
                    },
                ),

                RadioListTile(
                    title: Text("Female"),
                    value: "female", 
                    groupValue: gender, 
                    onChanged: (value){
                      setState(() {
                          gender = value.toString();
                      });
                    },
                ),

                RadioListTile(
                      title: Text("Other"),
                      value: "other", 
                      groupValue: gender, 
                      onChanged: (value){
                        setState(() {
                            gender = value.toString();
                        });
                      },
                )
            ],
          ),
        ),
    );
  } 
}