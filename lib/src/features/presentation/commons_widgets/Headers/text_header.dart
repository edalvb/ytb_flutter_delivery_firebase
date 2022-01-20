import 'package:flutter/material.dart';

Widget textHeader(
  String text, {
  Color color = Colors.black,
  FontWeight fontWeight = FontWeight.bold,
  double fontSize = 30.0,
  TextAlign textAlign = TextAlign.justify,
}) {
  return Text(
    text,
    textAlign: textAlign,
    style: TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
    ),
  );
}
