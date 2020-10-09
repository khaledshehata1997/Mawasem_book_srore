import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/screens/signup_screen.dart';
import 'package:mawasm_bookstore/services/constants.dart';

class NoAccountText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            'سجل',
            style: TextStyle(
                fontSize: 25,
                color: kPrimaryColor),
          ),
        ),
        Text(
          'ليس لديك حساب؟ ',
          style: TextStyle(fontSize: 20),
        ),

      ],
    );
  }
}
