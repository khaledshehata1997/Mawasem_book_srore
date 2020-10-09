import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kSecondaryColor = Color(0xFF979797);
const kAnimationDuration = Duration(milliseconds: 200);
final RegExp emailValidatorRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = 'Please Enter your email';
const String kInvalidEmailError = 'Please Enter Valid Email';
const String kPassNullError = 'Please Enter your password';
const String kShortPassError = 'Password is too short';
const String kMatchPassError = "Passwords don't match";


