import 'package:flutter/material.dart';
import 'package:ytb_flutter_delivery_firebase/src/colors/colors.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/BackButtons/back_button.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/Headers/text_header.dart';

class PlaceDetailPage extends StatelessWidget {
  const PlaceDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: orange,
            expandedHeight: 395,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image(
                    width: double.infinity,
                    height: 350,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1562967914-608f82629710?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=873&q=80',
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 350,
                    decoration:
                        BoxDecoration(color: Color.fromRGBO(0, 0, 0, 1.5)),
                  ),
                  Wrap(
                    children: [
                      _promoBottom(),
                      _infoPlace(),
                      _infoPlaceStats(),
                      _offerBanner(),
                    ],
                  )
                ],
              ),
            ),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.white);
            }),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.share,
                  size: 28,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.bookmark_border,
                  size: 28,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget _promoBottom() {
  return Container(
    margin: EdgeInsets.only(top: /*121,*/ 100, left: 30, right: 15),
    width: double.infinity,
    height: 25,
    child: Row(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: orange,
            shape: StadiumBorder(),
          ),
          child: textHeader(
            'Free Delivery',
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    ),
  );
}

Widget _infoPlace() {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        margin: EdgeInsets.symmetric(vertical: 20),
        child: textHeader(
          'Boon Lay Ho Huat Friend Prawn Noodle',
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            Icon(Icons.location_on, color: gris),
            textHeader(
              '03 Jameson Manors Apt. 177',
              color: gris,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _infoPlaceStats() {
  return Container(
    margin: EdgeInsets.only(top: 20),
    padding: EdgeInsets.symmetric(horizontal: 40),
    height: 70,
    decoration: const BoxDecoration(
      border: Border(
        top: BorderSide(color: Colors.white),
        bottom: BorderSide(color: Colors.white),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _tagInfoPlace(icon: Icons.star, text: '4.5', desc: '351 Ratings'),
        _barSpacer(),
        _tagInfoPlace(icon: Icons.bookmark, text: '137k', desc: 'Bookmak'),
        _barSpacer(),
        _tagInfoPlace(icon: Icons.photo, text: '346', desc: 'Photo'),
      ],
    ),
  );
}

Widget _barSpacer() {
  return Container(
    height: 40,
    decoration: const BoxDecoration(
      border: Border(right: BorderSide(color: Colors.white)),
    ),
  );
}

Widget _tagInfoPlace({
  required IconData icon,
  required String text,
  required String desc,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 19,
          ),
          textHeader(
            text,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ],
      ),
      textHeader(
        desc,
        color: gris,
        fontWeight: FontWeight.w500,
        fontSize: 15,
      ),
    ],
  );
}

Widget _offerBanner() {
  return Container(
    color: const Color.fromRGBO(255, 237, 214, 1.0),
    padding: EdgeInsets.all(20),
    height: 90,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textHeader(
              'New! Try Pickup',
              color: orange,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            textHeader(
              'Pickup on your time. Your order is \n ready when you are.',
              color: primaryColor,
              fontWeight: FontWeight.w400,
              fontSize: 13,
            ),
          ],
        ),
        const Spacer(),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: textHeader(
            'Order Now',
            color: Colors.white,
            fontSize: 13,
          ),
        ),
      ],
    ),
  );
}
