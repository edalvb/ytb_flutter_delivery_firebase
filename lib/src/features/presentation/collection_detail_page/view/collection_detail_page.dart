import 'package:flutter/material.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/BackButtons/back_button.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/Headers/text_header.dart';

class CollectionsDetailPage extends StatelessWidget {
  const CollectionsDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 230,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image(
                    width: double.infinity,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-roast-beef-vertical-1540505165.jpg?crop=1.00xw:0.668xh;0,0&resize=640:*'),
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 1.3),
                    ),
                  ),
                  Center(
                    child: textHeader(
                      'Asia\nRestaurant',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            leading: backButton(context, Colors.white),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: textHeader(
                          '128 Places',
                          color: Color.fromRGBO(51, 58, 77, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
