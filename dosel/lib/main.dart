// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
                  MaterialPageRoute(builder: (context) => signup()),
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

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
    
  final _formKey = GlobalKey<FormState>();
  var email = "";
  var password = "";
  var confirmPassword = "";
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

   registration() async {
    if (password == confirmPassword) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        print(userCredential);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text(
              "Registered Successfully. Please Login..",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Fourthpage(),
          ),
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print("Password Provided is too Weak");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Text(
                "Password Provided is too Weak",
                style: TextStyle(fontSize: 18.0, color: Colors.black),
              ),
            ),
          );
        } else if (e.code == 'email-already-in-use') {
          print("Account Already exists");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Text(
                "Account Already exists",
                style: TextStyle(fontSize: 18.0, color: Colors.black),
              ),
            ),
          );
        }
      }
    } else {
      print("Password and Confirm Password doesn't match");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.orangeAccent,
          content: Text(
            "Password and Confirm Password doesn't match",
            style: TextStyle(fontSize: 16.0, color: Colors.black),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Email: ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Email';
                    } else if (!value.contains('@')) {
                      return 'Please Enter Valid Email';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password: ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Password';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password: ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: confirmPasswordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Password';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, otherwise false.
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            email = emailController.text;
                            password = passwordController.text;
                            confirmPassword = confirmPasswordController.text;
                          });
                           Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Fourthpage()),);
                         
                        }
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an Account? "),
                    TextButton(
                        onPressed: () => {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          Fourthpage(),
                                  transitionDuration: Duration(seconds: 0),
                                ),
                              )
                            },
                        child: Text('Login'))
                  ],
                ),
              )
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