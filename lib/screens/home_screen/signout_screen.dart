import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/widgets/alert_dialog_widget.dart';


class SignOutScreen extends StatelessWidget {
  static String routeName = '/sign-out';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Color(0xFFFFECDF),
        ),
        CustomAlertDialog(
            title: "تسجيل الخروج",
            message: "هل أنت متأكد ، هل تريد تسجيل الخروج؟",
            positiveBtnText: 'نعم',
            negativeBtnText: 'لا'),
      ],
    );
  }
}
