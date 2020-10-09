import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/services/constants.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function press;
  DefaultButton({
    this.text,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    var mediaQuery =MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: mediaQuery.height*0.065,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: kPrimaryColor,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
