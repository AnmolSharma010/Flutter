import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(),
      debugShowCheckedModeBanner: false,
    home:MyHomePage(),
    );
    
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> carouselImages =[
          "https://image.shutterstock.com/image-photo/businessman-jumps-over-abyss-business-600w-1926368909.jpg"
          "https://image.shutterstock.com/image-photo/businessman-goes-on-yellow-scooter-600w-1938029800.jpg"
          "https://image.shutterstock.com/image-photo/hikers-backpacks-relaxing-on-top-600w-525243061.jpg"
          "https://image.shutterstock.com/image-photo/young-woman-backpack-standing-looking-600w-226511596.jpg"
          "https://image.shutterstock.com/image-photo/woman-traveler-hiking-himalaya-mountains-600w-1911722092.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home")),
      ),
      body: ListView(
        children: [
          CarouselSlider(
  options: CarouselOptions(
    aspectRatio: 16/9,
    autoPlay: true,
    viewportFraction: 0.9,
  ),
  items: carouselImages.map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            color: Colors.amber
          ),
          child: Image.network(i,fit: BoxFit.cover,),
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