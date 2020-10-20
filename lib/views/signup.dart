// import 'package:chatup_with_firebase/views/signin.dart';
import 'package:chatup_with_firebase/widgets/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
              TextField(
                decoration: textFieldDecoration("Uresname"),
                style: simpleTextStyle(),
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
                height: 26,
              ),
              // Container(
              //   alignment: Alignment.centerRight,
              //   child: CupertinoButton(
              //     child: Text(
              //       "Forgot Password?",
              //       style: simpleTextStyle(
              //         sizeOfText: 14,
              //         colorOfText: blueColor600(),
              //       ),
              //     ),
              //     onPressed: () {},
              //   ),
              // ),
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
                  "Sign Up",
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
                      "Sign up with Google",
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
                  Navigator.pushReplacementNamed(context, '/');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have acount, ",
                      style: simpleTextStyle(
                        sizeOfText: 15,
                        colorOfText: blueColor600(),
                      ),
                    ),
                    Text(
                      " Sign In",
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
