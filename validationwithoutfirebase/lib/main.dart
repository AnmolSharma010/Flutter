import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Validation(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Validation extends StatefulWidget {
  const Validation({Key? key}) : super(key: key);

  @override
  State<Validation> createState() => _ValidationState();
}

class _ValidationState extends State<Validation> {
   final formKey = GlobalKey<FormState>(); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Validation"),
        actions: [
          IconButton(
   onPressed: () {},
   icon: const Icon(Icons.search),
   )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(35.0),
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(
                    "https://tse2.mm.bing.net/th?id=OIP.HRQ8J1J4-zMxCEwi4vZ4KAHaFH&pid=Api&P=0"),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email_outlined),
                    labelText: "Email",
                  ),
                  validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
                    return 'Enter a valid email!';
                  }
                  return null;
                },
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password_outlined),
                    labelText: "Password",
                  ),
                  validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter a valid password!';
                  }
                  return null;
                },
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                RaisedButton(
                  onPressed: () {},
                  padding: EdgeInsets.fromLTRB(70, 20, 70, 20),
                   shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(10),),
                  color: Colors.greenAccent,
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.w800,
                        fontSize: 20),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                    
                     Text("Don't have an account"),
                     MaterialButton(onPressed: (){},
                    child: Text("Create account",style: TextStyle(color: Colors.blue,),),),
                  ],
                ),
                ],
            ),
          ),
        ),
      ),
    );
  }
}
