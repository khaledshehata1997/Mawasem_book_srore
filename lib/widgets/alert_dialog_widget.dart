import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/screens/home_screen/home_screen.dart';
import 'package:mawasm_bookstore/screens/signin_screen.dart';

class CustomAlertDialog extends StatelessWidget {
  final Color bgColor;
  final String title;
  final String message;
  final String positiveBtnText;
  final String negativeBtnText;
  final Function onPostivePressed;
  final Function onNegativePressed;
  final double circularBorderRadius;

  CustomAlertDialog({
    this.title,
    this.message,
    this.circularBorderRadius = 15.0,
    this.bgColor = Colors.purple,
    this.positiveBtnText,
    this.negativeBtnText,
    this.onPostivePressed,
    this.onNegativePressed,
  })  : assert(bgColor != null),
        assert(circularBorderRadius != null);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title != null
          ? Text(title,
              textAlign: TextAlign.center, style: TextStyle(fontSize: 27,color: Colors.white))
          : null,
      content: message != null
          ? Text(message,
              textAlign: TextAlign.center, style: TextStyle(fontSize: 18,color: Colors.white))
          : null,
      backgroundColor: bgColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(circularBorderRadius)),
      actions: <Widget>[
        negativeBtnText != null
            ? FlatButton(
                child: Text(negativeBtnText, style: TextStyle(fontSize: 22,color: Colors.white)),
                textColor: Theme.of(context).accentColor,
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                  if (onNegativePressed != null) {
                    onNegativePressed();
                  }
                },
              )
            : null,
        positiveBtnText != null
            ? FlatButton(
                child: Text(positiveBtnText, style: TextStyle(fontSize: 22,color: Colors.white)),
                textColor: Theme.of(context).accentColor,
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.pushNamed(context, SignInScreen.routeName);
                },
              )
            : null,
      ],
    );
  }
}
