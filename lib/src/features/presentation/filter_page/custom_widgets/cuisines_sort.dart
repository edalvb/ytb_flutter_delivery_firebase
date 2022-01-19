import 'package:flutter/material.dart';
import 'package:ytb_flutter_delivery_firebase/src/colors/colors.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/text_header.dart';

class CuisinesSort extends StatefulWidget {
  const CuisinesSort({Key? key}) : super(key: key);

  @override
  _CuisinesSortState createState() => _CuisinesSortState();
}

class _CuisinesSortState extends State<CuisinesSort> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _listTiles(
          context: context,
          title: 'Top Rated',
          isActive: true,
        )
      ],
    );
  }
}

Widget _listTiles({
  required BuildContext context,
  required String title,
  required bool isActive,
  void Function()? onTap,
  // required String subtitle,
  // required bool isSelected,
}) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Theme.of(context).dividerColor,
          width: 1,
        ),
      ),
    ),
    child: ListTile(
      onTap: onTap,
      title: textHeader(
        title,
        color: isActive ? orange : gris,
        fontWeight: FontWeight.w300,
        fontSize: 17,
      ),
      trailing: Icon(
        Icons.check,
        color: isActive ? orange : gris,
      ),
    ),
  );
}
