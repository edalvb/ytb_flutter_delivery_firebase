import 'package:flutter/material.dart';
import 'package:ytb_flutter_delivery_firebase/src/colors/colors.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/text_header.dart';

class FilterPage extends StatefulWidget {
  FilterPage({Key? key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Center(
        child: Text('Filter'),
      ),
    );
  }
}

PreferredSizeWidget _appBar(BuildContext context) {
  return AppBar(
    elevation: 0.5,
    backgroundColor: Colors.white,
    title: textHeader(
      'Filter',
      fontWeight: FontWeight.w600,
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
