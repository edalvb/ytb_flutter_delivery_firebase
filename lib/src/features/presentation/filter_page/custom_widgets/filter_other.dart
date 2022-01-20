import 'package:flutter/material.dart';
import 'package:ytb_flutter_delivery_firebase/src/colors/colors.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/text_header.dart';

class FilterOther extends StatefulWidget {
  String texto;
  bool isActive;
  void Function()? onTap;

  FilterOther({
    Key? key,
    required this.texto,
    this.isActive = false,
    this.onTap,
  }) : super(key: key);

  @override
  _FilterOtherState createState() => _FilterOtherState();
}

class _FilterOtherState extends State<FilterOther> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _listTiles(
          context: context,
          title: widget.texto,
          isActive: widget.isActive,
          onTap: widget.onTap,
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
        color: isActive ? orange : Colors.black,
        fontWeight: FontWeight.w300,
        fontSize: 17,
      ),
      trailing: isActive
          ? Icon(
              Icons.check,
              color: orange,
            )
          : SizedBox(width: 0),
    ),
  );
}
