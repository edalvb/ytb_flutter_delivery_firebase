import 'package:flutter/material.dart';

Widget button(BuildContext context, String text, void Function()? onPressed) {
  return Container(
    height: 45.0,
    margin: const EdgeInsets.only(top: 20.0),
    child: ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10.0),
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 17.0,
              ),
            ),
          )
        ],
      ),
    ),
  );
}
