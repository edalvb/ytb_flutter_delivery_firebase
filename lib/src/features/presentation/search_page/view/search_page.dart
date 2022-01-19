import 'package:flutter/material.dart';
import 'package:ytb_flutter_delivery_firebase/src/colors/colors.dart';
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
