import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mawasm_bookstore/screens/home_screen/home_content_screen.dart';
import 'package:mawasm_bookstore/screens/home_screen/signout_screen.dart';
import 'contact_screen.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home-screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  Widget callPack(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return HomeContentScreen();
      case 1:
        return ContactScreen();
      case 2:
        return SignOutScreen();
        break;
      default:
        return HomeContentScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) {
            _currentIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('الرئيسيه'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              title: Text('التواصل'),
            ),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.signOutAlt),
                title: Text('تسجيل الخروج')),
          ],
        ),
        body: callPack(_currentIndex));
  }
}
