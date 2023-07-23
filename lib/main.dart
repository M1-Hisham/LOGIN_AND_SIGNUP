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
        body: Column(children: [
          Container(
            //width: double.infinity,
            //padding: EdgeInsets.all(90),
            color: Colors.black,
            child: Text(
              'data on presd  hi mohamed hhhh hello world iam mohamed',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'my font',
                  fontWeight: FontWeight.w500),
            ),
          ),
          Image.asset(
            "assets/images/2021car.jpg",
            fit: BoxFit.cover,
            height: 300,
            width: 400,
          ),
          Text(
            "CAR",
            style: TextStyle(fontFamily: 'my font', fontSize: 50),
          ),
          Image.network(
            'https://images.squarespace-cdn.com/content/v1/51cdafc4e4b09eb676a64e68/1618602532707-3OAII3QVHYKCW3KJ1HJU/cars_boast.jpg',
            fit: BoxFit.cover,
            height: 200,
            width: 500,
            loadingBuilder: (context, child, progress) {
              return progress == null ? child : CircularProgressIndicator();
            },
          ),
          
        ]),
      ),
    );
  }
}
