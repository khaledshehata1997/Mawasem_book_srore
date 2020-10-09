import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/screens/home_screen/home_screen.dart';
import 'package:mawasm_bookstore/services/routes.dart';

 Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(BookStore());
}

class BookStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'BookStore Demo',
      theme: ThemeData(),
      initialRoute: HomeScreen.routeName,
      routes: routes
    );
  }
}

