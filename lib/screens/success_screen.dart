import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/screens/home_screen/home_screen.dart';
import 'package:mawasm_bookstore/widgets/default_button.dart';

class SuccessScreen extends StatefulWidget {
  static String routeName = "/success";
  @override
  _SuccessScreenState createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('تمت بنجاح',
            style: TextStyle(color: Colors.grey, fontSize: 25)),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black54,
            )),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: mediaQuery.height*0.08),
          Image.asset('images/success.png'),
          SizedBox(height: mediaQuery.height*0.08),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.03),
            child: Text(
              'تم التسجيل بنجاح',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.1),
            child: DefaultButton(
              text: "الذهاب الي الصفحة الرئيسية",
              press: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
