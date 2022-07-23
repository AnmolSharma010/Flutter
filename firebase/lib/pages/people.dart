import 'package:flutter/material.dart';

class people extends StatelessWidget {
  const people({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: const [
                Text(
                  "People Page",
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 70,
                ),
                CircleAvatar(
                  radius: 100,
                  child: Icon(
                    Icons.people,
                    size: 120,
                  ),
                ),
              
                SizedBox(
                  height: 100,
                  child: Text(
                    "People page Content",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
