import 'package:flutter/material.dart';
import 'package:ytb_flutter_delivery_firebase/src/colors/colors.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/text_header.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/filter_page/custom_widgets/cuisines_filter.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/filter_page/custom_widgets/cuisines_sort.dart';

class FilterPage extends StatefulWidget {
  FilterPage({Key? key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  // Sort by booleans
  bool topRated = false;
  bool nearMe = false;
  bool costHighToLow = false;
  bool costLowToHigh = false;
  bool mostPopular = false;

  // Filter booleans
  bool openNow = false;
  bool creditCard = false;
  bool alcoholServed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15, bottom: 15, left: 15),
              child: textHeader(
                'CUISINES',
                color: gris,
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CuisinesFilter(),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15, bottom: 5, left: 15),
              child: textHeader(
                'SORT BY',
                color: gris,
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
            _sortBy(),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 25, bottom: 5, left: 15),
              child: textHeader(
                'FILTER',
                color: gris,
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
            _filterBy(),
          ])),
        ],
      ),
    );
  }

  Widget _sortBy() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          CuisinesSort(
            texto: 'Top Rated',
            isActive: topRated,
            onTap: () => setState(() => topRated = !topRated),
          ),
          CuisinesSort(
            texto: 'Nearest Me',
            isActive: nearMe,
            onTap: () => setState(() => nearMe = !nearMe),
          ),
          CuisinesSort(
            texto: 'Cost High To Low',
            isActive: costHighToLow,
            onTap: () => setState(() => costHighToLow = !costHighToLow),
          ),
          CuisinesSort(
            texto: 'Cost Low To High',
            isActive: costLowToHigh,
            onTap: () => setState(() => costLowToHigh = !costLowToHigh),
          ),
          CuisinesSort(
            texto: 'Most Popular',
            isActive: mostPopular,
            onTap: () => setState(() => mostPopular = !mostPopular),
          ),
        ],
      ),
    );
  }

  Widget _filterBy() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          CuisinesSort(
            texto: 'Open Now',
            isActive: openNow,
            onTap: () => setState(() => openNow = !openNow),
          ),
          CuisinesSort(
            texto: 'Credids Cards',
            isActive: creditCard,
            onTap: () => setState(() => creditCard = !creditCard),
          ),
          CuisinesSort(
            texto: 'Alcohol Served',
            isActive: alcoholServed,
            onTap: () => setState(() => alcoholServed = !alcoholServed),
          ),
        ],
      ),
    );
  }
}

PreferredSizeWidget _appBar(BuildContext context) {
  return AppBar(
    elevation: 0.5,
    backgroundColor: Colors.white,
    title: Container(
      alignment: Alignment.center,
      child: textHeader(
        'Filter',
        fontWeight: FontWeight.w600,
      ),
    ),
    leading: Container(
      padding: EdgeInsets.only(top: 20, left: 7),
      child: textHeader(
        'Reset',
        fontSize: 17,
        fontWeight: FontWeight.w500,
      ),
    ),
    actions: [
      GestureDetector(
        onTap: () {
          // Cuando se cumplan todos los filtros
          Navigator.pop(context);
        },
        child: Container(
          padding: const EdgeInsets.only(top: 20, right: 10),
          child: textHeader(
            'Done',
            color: orange,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
      )
    ],
  );
}
