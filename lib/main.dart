// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print

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
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Text(
                "HELLO",
                style: TextStyle(
                    fontFamily: "my font", fontSize: 50, color: Colors.blue),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // TextField(
            //   obscureText: true,
            //   keyboardType: TextInputType.phone,
            //   textInputAction: TextInputAction.go,
            //   decoration: InputDecoration(
            //     labelText: 'txt',
            //     labelStyle: TextStyle(
            //         color: Colors.blue, fontFamily: 'my font', fontSize: 20),
            //     hintText: 'enter text',
            //     hintStyle: TextStyle(fontFamily: 'my font'),
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(50),
            //     ),
            //     icon: Icon(Icons.portrait_rounded),
            //     suffixIcon: Icon(Icons.remove_red_eye_outlined),
            //   ),
            // ),
            Container(
              width: 250,
              padding: EdgeInsets.only(left: 30),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.account_circle_outlined),
                    hintText: 'YOUR EMAIL:'),
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              //padding: EdgeInsets.symmetric(horizontal: 30),
              width: 250,
              padding: EdgeInsets.only(left: 30),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(100),
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    //contentPadding: EdgeInsets.only(left: 50),
                    border: InputBorder.none,
                    hintText: 'Password :',
                    icon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.visibility)),
              ),
            ),
            // Container(
            //   margin: EdgeInsets.only(bottom: 10),
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //     borderRadius: BorderRadius.circular(100),
            //   ),
            //   width: 250,
            //   child: TextButton(
            //     onPressed: () {
            //       print('login');
            //     },
            //     child: Text(
            //       'LOGIN',
            //       style: TextStyle(color: Colors.white, fontSize: 20),
            //     ),
            //   ),
            // ),
            ElevatedButton(
              style: ButtonStyle(
                //backgroundColor: MaterialStateProperty.all(Colors.red),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 95, vertical: 12)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                'LOG IN',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
