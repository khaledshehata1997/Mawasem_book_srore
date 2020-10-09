import 'package:flutter/material.dart';

class TextShow extends StatelessWidget {
  final String text;
  final double height;
  TextShow({this.text, this.height});
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: mediaQuery.width * 0.04,
          vertical: mediaQuery.height * 0.02),
      child: Container(
        padding: EdgeInsets.all(15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Color(0xFFFFECDF), borderRadius: BorderRadius.circular(20)),
        child: Text(
          text,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16,height: 1.2),
        ),
        height: height,
      ),
    );
  }
}
