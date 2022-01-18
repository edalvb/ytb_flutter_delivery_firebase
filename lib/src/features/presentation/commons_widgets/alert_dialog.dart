import 'package:flutter/material.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/text_header.dart';

void showAlertDialog(
  BuildContext context,
  ImageProvider<Object> image,
  String title,
  String subTitle,
  Widget widgetFooter,
) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          content: SizedBox(
            height: 400.0,
            child: Column(
              children: [
                Image(
                  width: 130.0,
                  height: 130.0,
                  image: image,
                ),
                Container(
                  margin: const EdgeInsets.all(20.0),
                  child: textHeader(title,
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 20.0),
                ),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  child: Text(
                    subTitle,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                widgetFooter,
              ],
            ),
          ),
        );
      });
}
