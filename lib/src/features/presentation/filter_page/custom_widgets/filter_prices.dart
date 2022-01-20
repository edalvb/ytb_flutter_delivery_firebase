import 'package:flutter/material.dart';
import 'package:ytb_flutter_delivery_firebase/src/colors/colors.dart';

class FilterPrice extends StatefulWidget {
  const FilterPrice({Key? key}) : super(key: key);

  @override
  FilterPriceState createState() => FilterPriceState();
}

class FilterPriceState extends State<FilterPrice> {
  // properties
  RangeValues _values = RangeValues(0, 100);
  int _minPrice = 0;
  int _maxPrice = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'S/ $_minPrice',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        Container(
          width: 300,
          child: RangeSlider(
            activeColor: orange,
            inactiveColor: gris,
            values: _values,
            min: 0,
            max: 100,
            onChanged: (RangeValues values) {
              setState(() {
                _values = values;
                _minPrice = values.start.round();
                _maxPrice = values.end.round();
              });
            },
            // divisions: 100,
            // labels: RangeLabels(_minPrice.toString(), _maxPrice.toString()),
          ),
        ),
        Text(
          'S/ $_maxPrice',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
