import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.menu,
            color: Colors.blue,
          ),
          title: Text(
            'Facebook',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.blue,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chat,
                color: Colors.blue,
                size: 30,
              ),
            )
          ],
          elevation: 20,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(40),
            width: 400,
            height: 600,
            color: Colors.black,
            child: Stack(children: [
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  color: Colors.green,
                  width: 150,
                  height: 190,
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  color: Colors.teal,
                  width: 150,
                  height: 190,
                ),
              ),
              Positioned(
                left: 0,
                bottom: 0,
                child: Container(
                  color: Colors.white,
                  width: 150,
                  height: 190,
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  color: Colors.amber,
                  width: 150,
                  height: 190,
                ),
              ),
              Positioned(
                child: Center(
                  child: Container(
                    color: Colors.blue,
                    width: 150,
                    height: 190,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
