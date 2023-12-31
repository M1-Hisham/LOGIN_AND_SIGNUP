import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constant/colors/colors.dart';
import '../widget/elevated_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Positioned(
            child: Image.asset('assets/images/signup_top.png'),
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
                    'SIGNUP',
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
            SvgPicture.asset('assets/images/signup.svg'),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 250,
              padding: const EdgeInsets.only(left: 30),
              decoration: BoxDecoration(
                color: color2,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.account_circle_outlined,
                      color: color1,
                    ),
                    hintText: 'YOUR EMAIL:'),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              //padding: EdgeInsets.symmetric(horizontal: 30),
              width: 250,
              padding: EdgeInsets.only(left: 30),
              decoration: BoxDecoration(
                color: color2,
                borderRadius: BorderRadius.circular(100),
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    //contentPadding: EdgeInsets.only(left: 50),
                    border: InputBorder.none,
                    hintText: 'Password :',
                    icon: Icon(
                      Icons.password,
                      color: color1,
                    ),
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: color1,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Button(
                name: '/',
                text: 'SIGNUP',
                color: color1,
                horizontal: 90,
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Already have an Account ?",
                style: TextStyle(color: color1),
              ),
              TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/'),
                  child: Text(
                    'SIGNUP',
                    style: TextStyle(
                      color: color1,
                    ),
                  )),
            ]),
            Text('OR',
                style: TextStyle(
                    color: color1, fontSize: 18, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/facebook.png',
                  height: 80,
                ),
                Image.asset(
                  'assets/images/insta.png',
                  height: 80,
                ),
                Image.asset(
                  'assets/images/twitter.png',
                  height: 80,
                ),
              ],
            )
          ]),
        ]),
      ),
    );
  }
}
