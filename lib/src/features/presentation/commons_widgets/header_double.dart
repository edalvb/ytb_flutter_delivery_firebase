import 'package:flutter/material.dart';
import 'package:ytb_flutter_delivery_firebase/src/colors/colors.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/text_header.dart';

Widget headerDoubleText({
  required String text,
  required String textAction,
  void Function()? onTap,
}) {
  return Container(
    child: Row(
      children: [
        textHeader(
          text,
          fontSize: 20,
        ),
        const Spacer(),
        GestureDetector(
          onTap: onTap,
          child: textHeader(
            textAction,
            fontWeight: FontWeight.w500,
            fontSize: 15,
            color: orange,
          ),
        ),
      ],
    ),
  );
}
