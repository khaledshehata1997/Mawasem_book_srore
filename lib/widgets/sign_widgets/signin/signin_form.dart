
import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/screens/forgotPassword_screen.dart';
import 'package:mawasm_bookstore/screens/home_screen/home_screen.dart';
import 'package:mawasm_bookstore/services/auth.dart';
import 'package:mawasm_bookstore/services/constants.dart';
import 'package:mawasm_bookstore/widgets/sign_widgets/custom_icon.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import '../../default_button.dart';
import '../from_error.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  final _auth=Auth();
  final _formKey = GlobalKey<FormState>();
  bool keepMeLoggedIn = false;
  final kKeepMeLoggedIn = 'KeepMeLoggedIn';
  String email;
  String password;
  bool remember = false;
  bool modalhud = false;
  changeModalHud(valueM){
    modalHud=valueM;
  }
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
  bool modalHud=false;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return ModalProgressHUD(
      inAsyncCall: modalHud,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: mediaQuery.height * 0.03),
            buildPasswordFormField(),
            SizedBox(height: mediaQuery.height * 0.025),
            Row(
              children: [
                Checkbox(
                  activeColor: kPrimaryColor,
                  value: keepMeLoggedIn,
                  onChanged: (value) {
                    setState(() {
                      keepMeLoggedIn = value;
                    });
                  },
                ),
                Text("تذكرني", style: TextStyle(fontSize: 17)),
                Spacer(),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(
                      context, ForgotPasswordScreen.routeName),
                  child: Text("هل نسيت كلمة المرور؟",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 17)),
                )
              ],
            ),
            FormError(errors: errors),
            SizedBox(height: mediaQuery.height * 0.025),
            DefaultButton(
                text: "إستمر",
                press: () async {
                  changeModalHud(true);
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                  }
                  if (keepMeLoggedIn == true) {
                    keepUserLoggedIn();
                  }
                  try {
                    await _auth.signIn(email.trim(), password.trim());
                    Navigator.pushNamed(context,HomeScreen.routeName);
                  } catch (e) {
                    changeModalHud(false);
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text(e.message),
                    ));
                  }
                  changeModalHud(false);
                }
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      controller: _passController,
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        value=password;

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
        email=value;
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
        suffixIcon: CustomIcon(svgIcon: "icons/Mail.svg"),
      ),
    );
  }
  void keepUserLoggedIn() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool(kKeepMeLoggedIn, keepMeLoggedIn);
  }
}