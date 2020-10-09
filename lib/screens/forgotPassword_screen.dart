import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/widgets/sign_widgets/forgot_pass_form.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static String routeName = '/forgotPassword';
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('أعد تعيين كلمة المرور',
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
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding:
            EdgeInsets.symmetric(horizontal: mediaQuery.width*0.05),
            child: Column(
              children: [
                SizedBox(height: mediaQuery.height * 0.05),
                Text(
                  "نسيت كلمة المرور",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.03),
                  child: Text(
                    "يرجى إدخال بريدك الإلكتروني وسنرسل لك رابطًا للعودة إلى حسابك",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(height: mediaQuery.height * 0.08),
                ForgotPassForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
