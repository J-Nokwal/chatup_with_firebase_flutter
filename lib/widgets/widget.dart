import 'package:flutter/material.dart';

InputDecoration textFieldDecoration(String hintText) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(
      color: Colors.white54,
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.blue[600],
      ),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
  );
}

Color whiteColor() {
  return Colors.white;
}

Color blueColor800() {
  return Colors.blue[800];
}

Color blueColor600() {
  return Colors.blue[600];
}

Color greyColor900() {
  return Colors.grey[900];
}

TextStyle simpleTextStyle(
    {double sizeOfText = 18, Color colorOfText = Colors.white}) {
  return TextStyle(
    color: colorOfText,
    fontSize: sizeOfText,
  );
}
