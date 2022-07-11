import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts Page"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Name                      Contact no.',style: TextStyle(fontSize: 20.0),),
            ),
            ListTile(
              title: Text('Anmol Sharma               6006921933'),
            ),
            ListTile(
              title: Text('Ram Kumar                  73464782364'),
            ),
            ListTile(
              title: Text('Sham Kumar                  98989898989'),
            ),
            ListTile(
              title: Text('Manoj Kumar                  34895738934'),
            ),
          ],
        ),
      ),
    );
  }
}