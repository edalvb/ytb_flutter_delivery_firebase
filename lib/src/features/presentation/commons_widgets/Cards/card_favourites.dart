import 'package:flutter/material.dart';
import 'package:ytb_flutter_delivery_firebase/src/colors/colors.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/Headers/text_header.dart';

Widget cardFavourites({
  required BuildContext context,
  required ImageProvider<Object> image,
  required String title,
  required String subtitle,
  required String review,
  required String rating,
  String buttonText = '',
  bool hasActionButton = false,
  EdgeInsetsGeometry? marginContainer,
  bool isFavourites = true,
}) {
  return Container(
    margin: marginContainer,
    padding: const EdgeInsets.only(left: 10, top: 20, bottom: 20),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(210, 211, 215, 1),
          offset: Offset(0, 5),
          blurRadius: 10,
        ),
      ],
    ),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(width: 90, height: 90, fit: BoxFit.cover, image: image),
        ),
        Container(
          padding: EdgeInsets.only(left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 7),
                    child: textHeader(
                      title,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      isFavourites ? Icons.favorite : Icons.favorite_border,
                      color: isFavourites ? rosa : Colors.green[300],
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(bottom: 5),
                child: textHeader(
                  subtitle,
                  color: gris,
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: amarillo,
                    size: 16,
                  ),
                  textHeader(
                    review,
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                  textHeader(
                    rating,
                    color: gris,
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    width: 90,
                    height: 25,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: orange,
                        elevation: 0.5,
                        shape: const StadiumBorder(),
                      ),
                      child: textHeader(
                        'Delivery',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 11,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}

// Me quedé en el minuto: 12:51
