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
            padding: EdgeInsets.all(90),
            width: 400,
            height: 600,
            color: Colors.black,
            child: Center(
              child: Wrap(
                  spacing: 20,
                  runSpacing: 10,
                  direction: Axis.vertical,
                  alignment: WrapAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        print('object1');
                      },
                      child: Text('data1'),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          print('object2');
                        },
                        child: Text('data2')),
                    ElevatedButton(
                        onPressed: () {
                          print('object3');
                        },
                        child: Text('data3')),
                    ElevatedButton(
                        onPressed: () {
                          print('object4');
                        },
                        child: Text('data4')),
                    ElevatedButton(
                        onPressed: () {
                          print('object5');
                        },
                        child: Text('data5')),
                    ElevatedButton(
                        onPressed: () {
                          print('object6');
                        },
                        child: Text('data6')),
                    ElevatedButton(
                        onPressed: () {
                          print('object6');
                        },
                        child: Text('data6')),
                    ElevatedButton(
                        onPressed: () {
                          print('object6');
                        },
                        child: Text('data6')),
                    ElevatedButton(
                        onPressed: () {
                          print('object6');
                        },
                        child: Text('data6')),
                    ElevatedButton(
                        onPressed: () {
                          print('object6');
                        },
                        child: Text('data6')),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
