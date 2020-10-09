import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/widgets/sign_widgets/signup/signup_form.dart';

class SignUpScreen extends StatefulWidget {
  static String routeName = '/signUp';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('التسجيل',
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.05),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: mediaQuery.height * 0.05),
              Text('تسجيل حساب جديد',style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.03),
                child: Text(
                  'أكمل التفاصيل الخاصة بك أو تابع مع وسائل التواصل الاجتماعي',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.07),
              SignUpForm(),
              SizedBox(height: mediaQuery.height * 0.035),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.03),
                child: Text(
                  'من خلال الاستمرار في التأكيد  ف انت توافق على الشروط والأحكام الخاصة بنا',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey.shade600,
                ),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
