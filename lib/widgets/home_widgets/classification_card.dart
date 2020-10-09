import 'package:flutter/material.dart';

class ClassificationCard extends StatelessWidget {
  ClassificationCard({
    @required this.image,
    @required this.text,
    @required this.press,
  });
  final String image, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(2),
              height: mediaQuery.height * 0.07,
              width: mediaQuery.width * 0.2,
              child: Image.asset(image, fit: BoxFit.cover)),
          SizedBox(height: 5),
          Text(text,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
