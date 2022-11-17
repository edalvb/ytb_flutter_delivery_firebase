import 'package:flutter/material.dart';
import 'package:ytb_flutter_delivery_firebase/src/colors/colors.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/Cards/card_populares.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/Headers/text_header.dart';

import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      _topBar(context),
                      textHeader('Discover new places'),
                      _sliderCards(),
                      _headers(context, 'Popular this week', 'Show all'),
                      cardPopulares(
                        context: context,
                        title: "Andy & Cindy' Dinner",
                        subtitle: "87 Botsford Circle Apt",
                        review: "4.0",
                        rating: "230 ratings",
                        buttonText: "Delivery",
                        hasActionButton: true,
                        image: const NetworkImage(
                            'https://static-sevilla.abc.es/media/gurmesevilla/2012/01/comida-rapida-casera.jpg'),
                      ),
                      cardPopulares(
                        context: context,
                        title: "Andy & Cindy' Dinner",
                        subtitle: "87 Botsford Circle Apt",
                        review: "4.0",
                        rating: "230 ratings",
                        buttonText: "Delivery",
                        hasActionButton: true,
                        image: const NetworkImage(
                            'https://static-sevilla.abc.es/media/gurmesevilla/2012/01/comida-rapida-casera.jpg'),
                      ),
                      cardPopulares(
                        context: context,
                        title: "Andy & Cindy' Dinner",
                        subtitle: "87 Botsford Circle Apt",
                        review: "4.0",
                        rating: "230 ratings",
                        buttonText: "Delivery",
                        hasActionButton: true,
                        image: const NetworkImage(
                            'https://static-sevilla.abc.es/media/gurmesevilla/2012/01/comida-rapida-casera.jpg'),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'collections');
                        },
                        child:
                            _headers(context, 'Popular this week', 'Show all'),
                      ),
                      _sliderCollections(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _topBar(BuildContext context) {
  return Row(
    children: [
      GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'search'),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.79,
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.only(left: 10.0),
          decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(234, 236, 239, 1.0)),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.search,
                size: 20.0,
                color: gris,
              ),
              const SizedBox(width: 10),
              Container(
                margin: EdgeInsets.only(left: 5.0),
                child: const Text(
                  'Search',
                  style: TextStyle(
                    color: gris,
                    fontSize: 17.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        width: 40.0,
        height: 40.0,
        margin: EdgeInsets.only(left: 10.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(209, 209, 214, 1.0),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: IconButton(
          icon: Icon(
            Icons.filter_list,
            size: 25.0,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pushNamed(context, 'filter'),
        ),
      ),
    ],
  );
}

Widget _sliderCards() {
  return SizedBox(
    height: 350.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _tarjeta(context);
          },
        );
      },
    ),
  );
}

Widget _tarjeta(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, 'place-detail');
    },
    child: Container(
      margin: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: const Image(
              width: 210,
              height: 250,
              fit: BoxFit.cover,
              image: NetworkImage('https://picsum.photos/200/300'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: const Text(
                  "Andy & Cindy's Diner",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "87 Botsfor Cirlcle Apt",
                  style: TextStyle(
                    color: Theme.of(context).disabledColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 13.0,
                  ),
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: amarillo,
                    size: 16.0,
                  ),
                  const Text(
                    "4.8",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0,
                    ),
                  ),
                  const Text(
                    "(233 ratings)",
                    style: TextStyle(
                      color: gris,
                      fontWeight: FontWeight.w600,
                      fontSize: 13.0,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    width: 80.0,
                    height: 18.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0.5),
                        backgroundColor: MaterialStateProperty.all(
                            Theme.of(context).colorScheme.secondary),
                        shape: MaterialStateProperty.all(const StadiumBorder()),
                      ),
                      child: const Text(
                        "Delivery",
                        style: TextStyle(
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}

Widget _headers(BuildContext context, String text, String textAction) {
  return Row(children: [
    Container(
      alignment: Alignment.centerLeft,
      child: textHeader(text, fontSize: 20.0),
    ),
    const Spacer(),
    GestureDetector(
      child: Row(
        children: [
          textHeader(textAction,
              fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.w500),
          const Icon(
            Icons.keyboard_arrow_right,
            color: Colors.black,
          )
        ],
      ),
    ),
  ]);
}

Widget _sliderCollections() {
  return SizedBox(
    height: 180.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _tarjetaCollection(context);
          },
        );
      },
    ),
  );
}

Widget _tarjetaCollection(BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: const Image(
            width: 300,
            height: 150,
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://static-sevilla.abc.es/media/gurmesevilla/2012/01/comida-rapida-casera.jpg'),
          ),
        ),
      ],
    ),
  );
}
