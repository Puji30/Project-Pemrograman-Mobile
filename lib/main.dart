import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('PET APPLICATION'),
        backgroundColor: Colors.blue,
        leading: new IconButton(
            icon: new Icon(Icons.menu, color: Colors.white), onPressed: null),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.add, color: Colors.white), onPressed: null),
          new IconButton(
              icon: new Icon(Icons.search, color: Colors.white),
              onPressed: null),
        ],
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            PictApp(),
            TextApp(),
          ]
        )
      ),
    ),
  ));
}


class PictApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: const EdgeInsets.only(top: 40.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.100),
      image: DecorationImage(
        image: NetworkImage('https://i.picsum.photos/id/237/536/354.jpg?hmac=i0yVXW1ORpyCZpQ-CknuyV-jbtU7_x9EBQVhvT5aRr0'),
        fit: BoxFit.cover,
      )
      ) 
    );
  }
}

class TextApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return Container(
   child: Text(
    "Sharing and Caring All About Pets",
    style: TextStyle(
     fontSize: 22,
     color: Colors.black,
    ),
   ),
   margin: const EdgeInsets.all(20.0),
  );
 }
}