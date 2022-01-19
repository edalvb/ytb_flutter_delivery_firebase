import 'package:flutter/material.dart';
import 'package:ytb_flutter_delivery_firebase/src/colors/colors.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/text_header.dart';

Widget cardVertical({
  required BuildContext context,
  required ImageProvider<Object> image,
  required String title,
  required String subtitle,
  double width = 160.0,
  double height = 120.0,
}) {
  return Container(
    margin: const EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            width: width,
            height: height,
            fit: BoxFit.cover,
            image: image,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textHeader(
              title,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              child: textHeader(
                subtitle,
                fontSize: 14,
                color: gris,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
