// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print

import 'package:facebook_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'screens/signup_screen.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/signup': (context) => const SignupScreen(),
      },
    );
  }
}
