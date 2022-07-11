import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({ Key? key }) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      appBar: AppBar(
        title: Text('Anmol Sharma'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: 
        SizedBox(
          height: 100,
          width: 100,
          child: Image.asset('assets/images/hand.jpg'),
        ),
      
      ), 
    );
  }
}