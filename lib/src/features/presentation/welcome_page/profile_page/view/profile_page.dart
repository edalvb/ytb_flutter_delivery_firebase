import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:ytb_flutter_delivery_firebase/src/colors/colors.dart';

import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/text_header.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [_header(), _firtsBlock()],
      ),
    );
  }
}

Widget _header() {
  return Container(
    height: 250.0,
    color: bgGrey,
    padding: const EdgeInsets.all(45.0),
    child: Row(
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1474447976065-67d23accb1e3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
          radius: 50,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  textHeader('Cameron Cook',
                      fontSize: 20.0, fontWeight: FontWeight.w600),
                  IconButton(
                    icon: const Icon(Icons.chevron_right, color: gris),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Container(
              height: 25.0,
              margin: const EdgeInsets.only(left: 20.0),
              child: RaisedButton(
                onPressed: () {},
                color: rosa,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage('assets/images/crown.png'),
                      width: 16.0,
                      height: 16.0,
                      color: Colors.white,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5.0),
                      child: textHeader('VIP Member',
                          color: Colors.white, fontSize: 11.0),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget _firtsBlock() {
  return Container(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: [
        ListTile(
          leading: Container(
            decoration: BoxDecoration(
              color: rosa,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: const Image(
              image: AssetImage('assets/images/noti.png'),
              width: 29.0,
              height: 29.0,
              color: Colors.white,
            ),
          ),
          title:
              textHeader('Notificaciones', color: Colors.black, fontSize: 16.0),
          trailing: const Icon(Icons.chevron_right, color: gris),
        )
      ],
    ),
  );
}
