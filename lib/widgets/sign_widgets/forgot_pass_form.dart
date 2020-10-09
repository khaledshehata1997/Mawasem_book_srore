import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/services/constants.dart';
import 'custom_icon.dart';
import '../default_button.dart';
import 'from_error.dart';
import 'no_account_text.dart';

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailcontroller =TextEditingController();
  List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => emailcontroller.text = newValue,
            onChanged: (value) {
              value = emailcontroller.text;
            },
            validator: (value) {
              if (value.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "البريد الإلكتروني",
              labelStyle: TextStyle(fontSize: 20),
              hintText: "أدخل البريد الإلكتروني",
              hintStyle: TextStyle(fontSize: 17),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0)
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0)
              ),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0)
              ),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0)
              ),
              suffixIcon: CustomIcon(svgIcon: 'icons/Mail.svg'),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          FormError(errors: errors),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          DefaultButton(
            text: "إستمر",
            press: () {
              if (_formKey.currentState.validate()) {
                FirebaseAuth.instance.sendPasswordResetEmail(email: emailcontroller.text);
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text('Please check your Email  !!'),
                ));
              }
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          NoAccountText(),
        ],
      ),
    );
  }
}
