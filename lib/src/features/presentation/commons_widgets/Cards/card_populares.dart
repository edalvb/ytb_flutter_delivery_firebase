import 'package:flutter/material.dart';
import 'package:ytb_flutter_delivery_firebase/src/colors/colors.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/Headers/text_header.dart';

Widget cardPopulares({
  required BuildContext context,
  required ImageProvider<Object> image,
  required String title,
  required String subtitle,
  required String review,
  required String rating,
  String buttonText = '',
  bool hasActionButton = false,
  EdgeInsetsGeometry? marginContainer,
}) {
  return Column(children: [
    Container(
      margin: marginContainer,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
            width: 80,
            height: 80,
            fit: BoxFit.cover,
            image: image,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 7.0),
                child: textHeader(
                  title,
                  fontSize: 17.0,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(bottom: 5.0),
                child: textHeader(
                  subtitle,
                  fontSize: 13.0,
                  color: gris,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.star, color: amarillo, size: 16.0),
                  textHeader(
                    review,
                    fontSize: 13.0,
                    color: gris,
                    fontWeight: FontWeight.w500,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5.0),
                    child: textHeader(
                      rating,
                      fontSize: 13.0,
                      color: gris,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 35.0),
                    width: 110.0,
                    height: 18.0,
                    child: hasActionButton
                        ? ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0.5),
                              shape: MaterialStateProperty.all(
                                  const StadiumBorder()),
                              backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).colorScheme.secondary),
                            ),
                            child: Text(
                              buttonText,
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.white,
                              ),
                            ),
                          )
                        : const SizedBox(width: 0),
                  )
                ],
              )
            ],
          ),
        )
      ]),
    )
  ]);
}
