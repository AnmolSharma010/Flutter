

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Home Page'),
        ),
        
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ElevatedButton(
                onPressed: () { 
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Secondpage()),
                );
                },
                child: const Text('Student',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w800,fontSize: 50),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent,
                  onPrimary: Colors.deepOrangeAccent,
                  padding: EdgeInsets.all(30),
                  minimumSize: Size(100, 100),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () { 
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdPage()),
                  );
                },
                child: const Text('Parents',style: TextStyle(color: Colors.green,fontWeight: FontWeight.w800,fontSize: 50),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent,
                  onPrimary: Colors.deepOrangeAccent,
                  padding: EdgeInsets.all(30),
                  minimumSize: Size(100, 100),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () { 
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Teacherpage()),
                  );
                },
                child: const Text('Teacher',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w800,fontSize: 50),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purpleAccent,
                  onPrimary: Colors.deepOrangeAccent,
                  padding: EdgeInsets.all(30),
                  minimumSize: Size(100, 100),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}


class Secondpage extends StatefulWidget {
  const Secondpage({ Key? key }) : super(key: key);

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login as Student"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(60.0),
          child: Column(
            children: <Widget>[
              Center(
                child: TextFormField (  
                  decoration: InputDecoration(  
                  border: OutlineInputBorder(),  
                  labelText: 'Enter Email',  
                  hintText: 'abc@gmail.com'  
                      ),  
                   ), 
              ),  
              Padding(  
                  padding: EdgeInsets.all(20),  
                  child: TextFormField(  
                    obscureText: true,  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Password',  
                      hintText: 'Enter Password',  
                    ),  
                  ),  
                ), 
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ElevatedButton(
                onPressed: () { 
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Registerpage()),
                  );
                },
                child: const Text('Register'),
              ),
              ElevatedButton(
                onPressed: () { 
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Fourthpage()),
                  );
                },
                child: const Text('  Login  '),
              ),
                  ],
                ) ,
                
            ],
          ),
        ),
      ),
    );
  }
}

class ThirdPage extends StatefulWidget {
  const ThirdPage({ Key? key }) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Login Page as Parents"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(60.0),
          child: Column(
            children: <Widget>[
              Center(
                child: TextFormField (  
                  decoration: InputDecoration(  
                  border: OutlineInputBorder(),  
                  labelText: 'Enter Email',  
                  hintText: 'abc@gmail.com'  
                      ),  
                   ), 
              ),  
              Padding(  
                  padding: EdgeInsets.all(20),  
                  child: TextFormField(  
                    obscureText: true,  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Password',  
                      hintText: 'Enter Password',  
                    ),  
                  ),  
                ), 
                SizedBox(
                  height: 20,
                ), 
               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ElevatedButton(
                onPressed: () { 
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Registerpage2()),
                  );
                },
                child: const Text('Register'),
              ),
              ElevatedButton(
                onPressed: () { 
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Fourthpage()),
                  );
                },
                child: const Text('  Login  '),
              ),
                  ],
                ) ,
            ],
          ),
        ),
      ),
    );
  }
}

class Teacherpage extends StatefulWidget {
  const Teacherpage({ Key? key }) : super(key: key);

  @override
  State<Teacherpage> createState() => _TeacherpageState();
}

class _TeacherpageState extends State<Teacherpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login as Teacher"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(60.0),
          child: Column(
            children: <Widget>[
              Center(
                child: TextFormField (  
                  decoration: InputDecoration(  
                  border: OutlineInputBorder(),  
                  labelText: 'Enter Email',  
                  hintText: 'abc@gmail.com'  
                      ),  
                   ), 
              ),  
              Padding(  
                  padding: EdgeInsets.all(20),  
                  child: TextFormField(  
                    obscureText: true,  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Password',  
                      hintText: 'Enter Password',  
                    ),  
                  ),  
                ), 
                SizedBox(
                  height: 20,
                ), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ElevatedButton(
                onPressed: () { 
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage3()),
                  );
                },
                child: const Text('Register'),
              ),
              ElevatedButton(
                onPressed: () { 
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Fourthpage()),
                  );
                },
                child: const Text('  Login  '),
              ),
                  ],
                ) ,
            ],
          ),
        ),
      ),
    );
  }
}

class Registerpage extends StatefulWidget {
  const Registerpage({ Key? key }) : super(key: key);

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  //email key
  final emailField = GlobalKey<FormState>();

  //email controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,

      onSaved: (Value){
        emailController.text = Value!;
      },
      textInputAction: TextInputAction.next,
    );

    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
     

      onSaved: (Value){
        passwordController.text = Value!;
      },
      textInputAction: TextInputAction.done,
    );

    final Loginbutton = Material();
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page as Student"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(60.0),
          child: Column(
            children: <Widget>[
              Center(
                child: TextFormField (  
                  decoration: InputDecoration(  
                  border: OutlineInputBorder(),  
                  labelText: 'Enter Email',  
                  hintText: 'abc@gmail.com'  
                      ),  
                   ), 
              ),  
              Padding(  
                  padding: EdgeInsets.all(20),  
                  child: TextFormField(  
                    obscureText: true,  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Password',  
                      hintText: 'Enter Password',  
                    ),  
                  ),  
                ), 
                SizedBox(
                  height: 20,
                ), 
                ElevatedButton(
                onPressed: () { 
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Secondpage()),
                  );
                },
                child: const Text('Create'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Registerpage2 extends StatefulWidget {
  const Registerpage2({ Key? key }) : super(key: key);

  @override
  State<Registerpage2> createState() => _Registerpage2State();
}

class _Registerpage2State extends State<Registerpage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page as Parents"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(60.0),
          child: Column(
            children: <Widget>[
              Center(
                child: TextFormField (  
                  decoration: InputDecoration(  
                  border: OutlineInputBorder(),  
                  labelText: 'Enter Email',  
                  hintText: 'abc@gmail.com'  
                      ),  
                   ), 
              ),  
              Padding(  
                  padding: EdgeInsets.all(20),  
                  child: TextFormField(  
                    obscureText: true,  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Password',  
                      hintText: 'Enter Password',  
                    ),  
                  ),  
                ), 
                SizedBox(
                  height: 20,
                ), 
                ElevatedButton(
                onPressed: () { 
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdPage()),
                  );
                },
                child: const Text('Create'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterPage3 extends StatefulWidget {
  const RegisterPage3({ Key? key }) : super(key: key);

  @override
  State<RegisterPage3> createState() => _RegisterPage3State();
}

class _RegisterPage3State extends State<RegisterPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page as Teacher"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(60.0),
          child: Column(
            children: <Widget>[
              Center(
                child: TextFormField (  
                  decoration: InputDecoration(  
                  border: OutlineInputBorder(),  
                  labelText: 'Enter Email',  
                  hintText: 'abc@gmail.com'  
                      ),  
                   ), 
              ),  
              Padding(  
                  padding: EdgeInsets.all(20),  
                  child: TextFormField(  
                    obscureText: true,  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Password',  
                      hintText: 'Enter Password',  
                    ),  
                  ),  
                ), 
                SizedBox(
                  height: 20,
                ), 
                ElevatedButton(
                onPressed: () { 
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Teacherpage()),
                  );
                },
                child: const Text('Create'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Fourthpage extends StatefulWidget {
  const Fourthpage({ Key? key }) : super(key: key);

  @override
  State<Fourthpage> createState() => _FourthpageState();
}

class _FourthpageState extends State<Fourthpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('Welcome to AlphaCoders',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}