import 'package:flutter/material.dart';

Widget textHeader(String text,
    {Color color = Colors.black,
    FontWeight fontWeight = FontWeight.bold,
    double fontSize = 30.0}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
    ),
  );
}
