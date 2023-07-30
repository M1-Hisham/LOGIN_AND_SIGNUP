import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant/colors/colors.dart';
import '../widget/elevated_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(214, 255, 255, 255),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(parent: ScrollPhysics()),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(children: [
            Positioned(
              child: Image.asset('assets/images/main_top.png'),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset('assets/images/login_bottom.png'),
            ),
            Column(children: [
              SafeArea(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 30),
                    child: Text(
                      'LOGIN',
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
              SvgPicture.asset('assets/images/login.svg'),
              SizedBox(
                height: 30,
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
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Button(
                  name: '/login',
                  text: 'LOGIN',
                  color: color1,
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Don't have an Account ?",
                  style: TextStyle(color: color1),
                ),
                TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/signup'),
                    child: Text(
                      'SIGNUP',
                      style: TextStyle(
                        color: color1,
                      ),
                    )),
              ])
            ]),
          ]),
        ),
      ),
    );
  }
}
