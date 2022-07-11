import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:jaggi/pages/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Learning",
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.red,
        primarySwatch: Colors.red,
        fontFamily: "regular",
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        drawer: mydrawer(context),
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
