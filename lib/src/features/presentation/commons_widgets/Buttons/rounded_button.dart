import 'package:flutter/material.dart';

// Colors
import 'package:ytb_flutter_delivery_firebase/src/colors/colors.dart';

Widget roundedButton({
  required String label,
  ImageProvider<Object>? icon,
  Color color = orange,
  double width = 350.0,
  double height = 45.0,
  double radius = 20.0,
  bool isWithIcon = false,
  void Function()? onPressed,
}) {
  ImageProvider<Object> image = AssetImage('assets/images/facebook.png');

  if (isWithIcon == true && icon != null) {
    image = icon;
  }

  return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.only(top: 10.0),
      child: isWithIcon
          ? _elevatedButtonWithIcon(radius, image, label, color, onPressed)
          : _elevatedButtonNotIcon(radius, label, color, onPressed));
}

// AssetImage('assets/images/facebook.png')
//

Widget _elevatedButtonWithIcon(double radius, ImageProvider<Object> image,
    String label, Color color, void Function()? onPressed) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(color),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius))),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: image,
          height: 20.0,
          width: 20.0,
        ),
        Container(
          margin: const EdgeInsets.only(left: 10.0),
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
        )
      ],
    ),
  );
}

// 'Connect with facebook'
Widget _elevatedButtonNotIcon(
  double radius,
  String label,
  Color color,
  void Function()? onPressed,
) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(color),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius))),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10.0),
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
        )
      ],
    ),
  );
}
