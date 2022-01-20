import 'package:flutter/material.dart';
import 'package:ytb_flutter_delivery_firebase/src/colors/colors.dart';

class FilterCuisines extends StatefulWidget {
  FilterCuisines({Key? key}) : super(key: key);

  @override
  _FilterCuisinesState createState() => _FilterCuisinesState();
}

class _FilterCuisinesState extends State<FilterCuisines> {
  bool btnAmerica = false;
  bool btnSushi = false;
  bool btnAsia = false;
  bool btnPizza = false;

  bool btnDesserts = false;
  bool btnFastFood = false;
  bool btnVietnamese = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _roudendButtonFilter(
              labelText: 'America',
              isActive: btnAmerica,
              onPressed: () => setState(() => btnAmerica = !btnAmerica),
            ),
            _roudendButtonFilter(
              labelText: 'Asia',
              isActive: btnAsia,
              onPressed: () => setState(() => btnAsia = !btnAsia),
            ),
            _roudendButtonFilter(
              labelText: 'Shushi',
              isActive: btnSushi,
              onPressed: () => setState(() => btnSushi = !btnSushi),
            ),
            _roudendButtonFilter(
              labelText: 'Pizza',
              isActive: btnPizza,
              onPressed: () => setState(() => btnPizza = !btnPizza),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _roudendButtonFilter(
              labelText: 'Desserts',
              isActive: btnDesserts,
              onPressed: () => setState(() => btnDesserts = !btnDesserts),
            ),
            _roudendButtonFilter(
              labelText: 'Fast Food',
              isActive: btnFastFood,
              onPressed: () => setState(() => btnFastFood = !btnFastFood),
            ),
            _roudendButtonFilter(
              labelText: 'Vietnamese',
              isActive: btnVietnamese,
              onPressed: () => setState(() => btnVietnamese = !btnVietnamese),
            ),
          ],
        ),
      ],
    );
  }
}

Widget _roudendButtonFilter({
  required bool isActive,
  required String labelText,
  void Function()? onPressed,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      elevation: 0.5,
      primary: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(
          color: isActive ? orange : gris,
          width: 1,
        ),
      ),
    ),
    child: Text(
      labelText,
      style: TextStyle(
        color: isActive ? orange : gris,
        fontSize: 14,
      ),
    ),
  );
}
