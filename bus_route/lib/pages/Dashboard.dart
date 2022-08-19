import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
             width: 200,
              height: 800,
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(10),
            color: Colors.blue,
            child: Column(
              children: [
                Center(child: Text("LOGO",style: TextStyle(fontSize: 30,color: Colors.white),))
              ],
            ),
          ),
          Column(
            children: [
              Container(
                 width: 840,
              height: 50,
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(0),
              color: const Color (0xFFE1F5FE),
              ),
              Container(
                width: 840,
                height: 656,
                color: Colors.white,
                child: Column(
                  children: [
                    
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}