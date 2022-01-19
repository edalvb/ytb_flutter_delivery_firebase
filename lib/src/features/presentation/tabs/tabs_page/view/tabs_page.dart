import 'package:flutter/material.dart';

import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/alert_dialog.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/rounded_button.dart';

import 'package:ytb_flutter_delivery_firebase/src/features/presentation/tabs/explore_tab/view/explore_tab.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/tabs/fovorites_tab/view/fovorites_tab.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/tabs/my_order_tab/view/my_order_tab.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/tabs/profile_tab/view/profile_tab.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _pedirUbicacion(context);
    });
  }

  final List<Widget> _widgetOptions = [
    const ExploreTab(),
    MyOrderTab(),
    FavoriteTab(),
    ProfileTab(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: _buttonNavigationBar(context),
    );
  }

  Widget _buttonNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 30,
      selectedItemColor: Theme.of(context).colorScheme.secondary,
      unselectedItemColor: Theme.of(context).colorScheme.onSecondary,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      showUnselectedLabels: true,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: "Explore",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assessment),
          label: "My Order",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: "Favorite",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_pin),
          label: "Profile",
        ),
      ],
    );
  }

  Future _pedirUbicacion(BuildContext context) async {
    showAlertDialog(
        context,
        NetworkImage(
            'https://www.freeiconspng.com//uploads/localization-icon-13.png'),
        'Enable Your Location',
        'Please enable your location to use this app',
        roundedButton(
            label: "Enable location",
            onPressed: () {
              print('enable location');
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => LoginPage()));
            }));
  }
}
