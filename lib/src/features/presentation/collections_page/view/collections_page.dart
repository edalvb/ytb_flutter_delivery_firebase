import 'package:flutter/material.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/BackButtons/back_button.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/Headers/text_header.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            title: textHeader('Collections', fontSize: 17),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.black);
            }),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 20),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              children: [
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _card(BuildContext context) {
  return GestureDetector(
    onTap: () {},
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            width: 165,
            height: 190,
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-roast-beef-vertical-1540505165.jpg?crop=1.00xw:0.668xh;0,0&resize=640:*'),
          ),
        ),
        Container(
          width: 165,
          height: 190,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 1.3),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(right: 35, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              textHeader('Asia',
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textHeader('Asia',
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w300),
            ],
          ),
        )
      ],
    ),
  );
}
