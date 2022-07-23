import 'package:flutter/material.dart';

class search extends StatelessWidget {
  const search ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: const [
          Text(
            "Search Page",
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
              Icons.search_off,
              size: 120,
            ),
          ),
          SizedBox(
            height: 100,
            child: Text(
              "Search page Content",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
