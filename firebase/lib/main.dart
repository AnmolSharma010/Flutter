import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase/pages/add.dart';
import 'package:firebase/pages/people.dart';
import 'package:firebase/pages/profile.dart';
import 'package:firebase/pages/search.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final items = const [
    Icon(
      Icons.people,
      size: 30.0,
    ),
    Icon(
      Icons.person,
      size: 30.0,
    ),
    Icon(
      Icons.add,
      size: 30.0,
    ),
    Icon(
      Icons.search_outlined,
      size: 30.0,
    ),
  ];
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[500],
        title: Center(
          child: Text(
            "Curved Navigation Bar",
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selectedIndex) {
          index = selectedIndex;
        },
        height: 70,
        backgroundColor: Colors.lightGreen,
        animationDuration: const Duration(milliseconds: 300),
      ),
      body: Container(
        color: Colors.blue,
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: getSelectedWidget(index: index),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Anmol Sharma"),
              accountEmail: Text("anmolsharma@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const firstpage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Contact Us"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const people();
        break;
      case 1:
        widget = const profile();
        break;
      case 2:
        widget = const add();
        break;
      case 3:
        widget = const search();
        break;
      default:
        widget = const people();
        break;
    }
    return widget;
  }
}

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Login Here",
            style: TextStyle(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
              ),
             
              Image.network("https://tse4.mm.bing.net/th?id=OIP.zOp_SYD9lLfiyCMsjcSLCwHaFj&pid=Api&P=0", 
              height: 200,
              width: 350,
              fit: BoxFit.cover,
              ),
              SizedBox(
                height: 100,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter username',
                    hintText: 'username'),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Password',
                      hintText: 'password'),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              RaisedButton(
                textColor: Colors.white,
                color: Colors.blue,
                child: Text('Sign In'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const dart1(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class dart1 extends StatefulWidget {
  const dart1({Key? key}) : super(key: key);

  @override
  State<dart1> createState() => _dart1State();
}

class _dart1State extends State<dart1> {
  int index = 0;
  List<String> CarouselImages = [
    "https://image.shutterstock.com/image-photo/businessman-jumps-over-abyss-business-600w-1926368909.jpg"
        "https://image.shutterstock.com/image-photo/businessman-goes-on-yellow-scooter-600w-1938029800.jpg"
        "https://image.shutterstock.com/image-photo/hikers-backpacks-relaxing-on-top-600w-525243061.jpg"
        "https://image.shutterstock.com/image-photo/young-woman-backpack-standing-looking-600w-226511596.jpg"
        "https://image.shutterstock.com/image-photo/woman-traveler-hiking-himalaya-mountains-600w-1911722092.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("My Products"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.red[200],
        showUnselectedLabels: true,
        onTap: (_index) {
          index = _index;
        },
        currentIndex: index,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Ionicons.home_outline,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Ionicons.cart_outline,
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Ionicons.grid_outline,
            ),
            label: "Grid",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Ionicons.person_outline,
            ),
            label: "Profile",
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Anmol Sharma"),
              accountEmail: Text("anmolsharma@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Ionicons.list,
              ),
              title: Text(
                "My Orders",
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 16 / 9,
              autoPlay: true,
              viewportFraction: 0.9,
            ),
            items: CarouselImages.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(
                      horizontal: 5.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                    ),
                    child: Image.network(
                      i,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
