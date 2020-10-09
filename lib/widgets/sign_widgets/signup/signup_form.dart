import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/screens/success_screen.dart';
import 'package:mawasm_bookstore/services/constants.dart';
import 'package:mawasm_bookstore/widgets/sign_widgets/custom_icon.dart';
import '../../default_button.dart';
import '../from_error.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String name;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildUserNameFormField(),
          SizedBox(height: mediaQuery.height * 0.03),
          buildEmailFormField(),
          SizedBox(height: mediaQuery.height * 0.03),
          buildPasswordFormField(),
          SizedBox(height: mediaQuery.height * 0.03),
          FormError(errors: errors),
          SizedBox(height: mediaQuery.height * 0.025),
          DefaultButton(
            text: "إستمر",
            press: () async {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                Navigator.pushNamed(context, SuccessScreen.routeName);
              }
              var result = await FirebaseAuth.instance
                  .createUserWithEmailAndPassword(
                  email: _emailController.text,
                  password: _passController.text);
              if (result.user != null) {
                Navigator.pushNamed(context, SuccessScreen.routeName);
              } else {
                print('error');
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildUserNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: "الإسم",
        labelStyle: TextStyle(fontSize: 20),
        hintText: "أدخل إسمك",
        hintStyle: TextStyle(fontSize: 17),
        enabledBorder:
        OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        focusedBorder:
        OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        focusedErrorBorder:
        OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        errorBorder:
        OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        suffixIcon: CustomIcon(svgIcon: 'icons/User.svg'),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      controller: _passController,
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "كلمة المرور",
        labelStyle: TextStyle(fontSize: 20),
        hintText: 'أدخل كلمة المرور',
        hintStyle: TextStyle(fontSize: 17),
        enabledBorder:
        OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        focusedBorder:
        OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        focusedErrorBorder:
        OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        errorBorder:
        OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        suffixIcon: CustomIcon(svgIcon: "icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "البريد الإلكتروني",
        labelStyle: TextStyle(fontSize: 20),
        hintText: "أدخل البريد الإلكتروني",
        hintStyle: TextStyle(fontSize: 17),
        enabledBorder:
        OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        focusedBorder:
        OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        focusedErrorBorder:
        OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        errorBorder:
        OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        suffixIcon: CustomIcon(svgIcon: 'icons/Mail.svg'),
      ),
    );
  }
}