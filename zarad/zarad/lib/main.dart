import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: QuoteList(),
    debugShowCheckedModeBanner: false,
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
      backgroundColor: Colors.grey[500],
      drawer: Drawer(
        child: ListTile(),
      ),
      
      appBar: AppBar(
        title: Text('Anmol Sharma'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Stack(
           fit: StackFit.passthrough,
           overflow: Overflow.visible,  
          children: <Widget>[
            Container(
                height: 300,  
                width: 400, 
              child: Title(
                color: Colors.greenAccent, 
              child: Center(child: Text('My Name is Anmol Sharma'),
              ),
              ),
              
            ),
          ],
          
        ),
      ),
        
    );
  }
}
        