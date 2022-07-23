import 'package:flutter/material.dart';

class add extends StatelessWidget {
  const add({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: const [
          Text(
            "Add Page",
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
              Icons.add_a_photo,
              size: 120,
            ),
          ),
          SizedBox(
            height: 100,
            child: Text(
              "Add page Content",
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
