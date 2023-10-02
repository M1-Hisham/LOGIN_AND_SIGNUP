import 'package:facebook_app/constant/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widget/elevated_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Positioned(
            child: Image.asset('assets/images/main_top.png'),
          ),
          Positioned(
            bottom: 0,
            child: Image.asset('assets/images/main_bottom.png'),
          ),
          Column(children: [
            SafeArea(
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'WELCOME TO EDU',
                    style: TextStyle(
                      color: color1,
                      fontSize: 20,
                      fontFamily: 'my font',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SvgPicture.asset('assets/images/chat.svg'),
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 20),
              child: Button(
                name: '/login',
                text: 'LOGIN',
                color: color1,
              ),
            ),
            Button(
              name: '/signup',
              text: 'SIGNUP',
              color: color2,
              horizontal: 90,
            ),
            SizedBox(height: 20),
          ]),
        ]),
      ),
    );
  }
}
