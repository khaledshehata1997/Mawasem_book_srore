import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/widgets/sign_widgets/no_account_text.dart';
import 'package:mawasm_bookstore/widgets/sign_widgets/signin/signin_form.dart';

class SignInScreen extends StatefulWidget {
  static String routeName = '/signIn';
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {



  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('تسجيل الدخول',
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: mediaQuery.height * 0.05),
              Text(
                'مرحبا بعودتك',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: mediaQuery.height*0.005),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.03),
                child: Text(
                  "قم بتسجيل الدخول باستخدام بريدك الإلكتروني وكلمة المرور أو تابع مع وسائل التواصل الاجتماعي",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.07),
              SignInForm(),
              SizedBox(height: mediaQuery.height * 0.035),
              NoAccountText(),
            ],
          ),
        ),
      ),
    );
  }
}
