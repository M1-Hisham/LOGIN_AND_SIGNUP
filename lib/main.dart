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
        body: Container(
          color: Colors.black,
          height: 300,
          child: Row(children: [
            Expanded(
              child: Container(
                color: Colors.amber,
                height: 120,
                width: 120,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
                height: 120,
                width: 120,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                height: 120,
                width: 120,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
