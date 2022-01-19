import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:ytb_flutter_delivery_firebase/src/colors/colors.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/card_vertical.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/header_double.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/text_header.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(Icons.close),
              color: Colors.black,
              iconSize: 40,
              onPressed: () => Navigator.pop(context),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      alignment: Alignment.centerLeft,
                      child: textHeader('Seach'),
                    ),
                    _searchInput(),
                    const SizedBox(height: 40),
                    headerDoubleText(
                      text: 'Recent search',
                      textAction: 'Clear all',
                    ),
                    _sliderRecentSearch(context),
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}

Widget _searchInput() {
  return Container(
    height: 40,
    margin: const EdgeInsets.only(top: 20),
    padding: const EdgeInsets.only(left: 5),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(right: 5),
        prefixIcon: Icon(Icons.search, color: gris),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        hintText: 'Search',
      ),
    ),
  );
}

Widget _sliderRecentSearch(BuildContext context) {
  return Container(
    height: 190,
    margin: const EdgeInsets.only(top: 5),
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return cardVertical(
              context: context,
              title: "Andy & Cindy's Dinner",
              subtitle: "87 Botsford Circle Apt",
              image: NetworkImage(
                'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/high-protein-dinners-slow-cooker-meatballs-image-5a04d02.jpg?quality=90&resize=500,454',
              ),
            );
          },
        );
      },
    ),
  );
}
