import 'package:chatup_with_firebase/widgets/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_icons/flutter_icons.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// https://www.youtube.com/watch?v=FTju8w4zEno&t=3472s
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor900(),
      // appBar: AppBar(
      //   backgroundColor: blueColor800(),
      //   title: Image.asset(
      //     "assets/images/logo.png",
      //     height: 40,
      //   ),
      // ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 5,
                child: Image.asset('assets/images/logo.png'),
              ),
              TextField(
                decoration: textFieldDecoration("Email"),
                style: simpleTextStyle(),
              ),
              TextField(
                obscureText: true,
                // obscuringCharacter: '*',
                decoration: textFieldDecoration("Password"),
                style: simpleTextStyle(),
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: CupertinoButton(
                  child: Text(
                    "Forgot Password?",
                    style: simpleTextStyle(
                      sizeOfText: 14,
                      colorOfText: blueColor600(),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/forgetpassword');
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 14),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      const Color(0xff007EF4),
                      const Color(0xff2A75BC),
                    ]),
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  "Sign In",
                  style: simpleTextStyle(),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 11),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      const Color(0xff007EF4),
                      const Color(0xff2A75BC),
                    ]),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/google.png',
                      height: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Sign in with Google",
                      style: simpleTextStyle(),
                    ),
                  ],
                ),
              ),
              // Image.asset(
              //   'assets/images/google.ico',
              //   height: 30,
              // ),
              SizedBox(),
              CupertinoButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/signup');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have acount, ",
                      style: simpleTextStyle(
                        sizeOfText: 15,
                        colorOfText: blueColor600(),
                      ),
                    ),
                    Text(
                      " Register now",
                      style: simpleTextStyle(
                        sizeOfText: 15,
                        colorOfText: whiteColor(),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
