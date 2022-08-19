import 'dart:html';

import 'package:bus_route/pages/Dashboard.dart';
import 'package:bus_route/pages/Signup.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool _obsecureText = true;
 bool isChecked = false;   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://c1.wallpaperflare.com/preview/442/857/84/bus-silhouette-bus-ride-window-seat.jpg"),
            fit :BoxFit.cover
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          
          children: [
            Container(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(20)),
                  Text("Logo",style: TextStyle(fontSize:15,color: Colors.amber),
                  ),
                  SizedBox(height: 100,
                  width: 30,),
                  Row(
                    children: [
                       Padding(padding: EdgeInsets.all(20)),
                      Text("Bus",style: TextStyle(fontSize:50,color: Colors.white,),),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Navigation",style: TextStyle(fontSize:50,color: Colors.greenAccent),
                      ),
                    ],
                  ),
                  Text("Module",style: TextStyle(fontSize:50,color: Colors.white),
                  ),
                  Text("Create Daily Bus Routes for Drivers",style: TextStyle(fontSize:18,color: Colors.white),)
                ],
              ),
            ),
            SizedBox(
               width: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Container(
              width: 500,
              height: 600,
              margin: EdgeInsets.all(40),
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Center(child: Text("Login to Admin Panel",
                  style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold,
                  ),
                  ),
                  
                  ),
                  Text("--------------------------------",style: TextStyle(color: Colors.white,fontSize: 30),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                 
                  TextFormField(
                    style: TextStyle(
                      color: Colors.white
                    ),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70,width: 2.0)
                    ),
                    prefixIcon: Icon(Icons.email_outlined,color: Colors.white70,),
                    labelText: "Email",
                  ),
                  
                  ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                TextFormField(
                  style: TextStyle(
                      color: Colors.white
                    ),
                  obscureText: _obsecureText,
                  decoration: InputDecoration(
                   enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70,width: 2.0)
                    ),
                    prefixIcon: Icon(Icons.password_outlined,color: Colors.white70,),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        _obsecureText:!_obsecureText;
                      },
                      child: Icon(_obsecureText ?Icons.visibility:Icons.visibility_off,color: Colors.white,),
                    ),
                    labelText: "Password",
                  ),
                  
                ),
                Row(
                  children: [
                   Checkbox(value: isChecked, onChanged: (value){
                    setState(() {
                      isChecked=value!;
                    });
                   }),
                   Text("Keep me Signed in",style: TextStyle(
                      color: Colors.white
                    ),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                   MaterialButton(onPressed: (){},
                    child: Text("Forgot Password",style: TextStyle(color: Colors.white,
                    ),
                    ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Dashboard(),),);
                  },
                  padding: EdgeInsets.fromLTRB(150, 20, 150, 20),

                   shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(10),),
                  color: Colors.white,
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w800,
                        fontSize: 20),
                  ),
                  
                ),
                SizedBox(
                      height: 8,
                     ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                    
                     Text("Have No Account?",style: TextStyle(color: Colors.white),),
                     
                     MaterialButton(onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupPage()),);
                     },
                    child: Text("Signup Here",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
                    ),
                    ),
                  ],
                ),
                ],
              ),
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.lightBlue,
                  ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}