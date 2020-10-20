//import 'package:chatup_with_firebase/views/signin.dart';
import 'package:chatup_with_firebase/views/chatRoomsScreen.dart';
import 'package:chatup_with_firebase/views/forgetpassword.dart';
import 'package:chatup_with_firebase/views/signin.dart';
import 'package:chatup_with_firebase/views/signup.dart';
// import 'package:chatup_with_firebase/views/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xff145c9E),
          primarySwatch: Colors.blue,
        ),
        //home: SignUp(),
        //initialRoute: '/',
        routes: {
          '/': (context) => SignIn(),
          '/signup': (context) => SignUp(),
          '/forgetpassword': (context) => ForgetPassword(),
          '/chatRoomScreens': (context) => ChatRoomScreens(),
        });
  }
}
