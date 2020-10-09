import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/screens/home_screen/home_screen.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatefulWidget {
  static String routeName = '/Splash';
  @override
  _SplashState createState() => new _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        loadingText: Text('By : Best Gator'),
        seconds: 4,
        navigateAfterSeconds: HomeScreen(),
        title: Text(
          'مرحبا بكم في مكتبة مواسم',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        image: Image.asset('images2/logo.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader:  TextStyle(),
        photoSize: 120.0,
        loaderColor: Colors.red);
  }
}
