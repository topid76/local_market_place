import 'package:flutter/material.dart';
import 'package:local_marketplace/routes/constants.dart';

class BottomBarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.of(context).pushNamed(MainRoute);
      Navigator.of(context).pushNamed(RegistrationRoute);
      Navigator.of(context).pushNamed(RegistrationRoute);
      Navigator.of(context).pushNamed(RegistrationRoute);
      Navigator.of(context).pushNamed(ProfileRoute);
      print(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black), label: 'Search'),
        BottomNavigationBarItem(
            icon: Icon(Icons.message, color: Colors.black), label: 'Message'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: Colors.black),
            label: 'Notification'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black), label: 'Profile'),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amberAccent,
      onTap: _onItemTapped,
    );
  }
}
