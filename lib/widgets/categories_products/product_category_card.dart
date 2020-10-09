import 'package:flutter/material.dart';

class ProductsCategoryCard extends StatelessWidget {
  ProductsCategoryCard({
    @required this.image,
    @required this.title,
     this.press,
  });
  final String image, title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Column(
        children: <Widget>[
          Container(
            height: mediaQuery.height * 0.1,
            margin: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.07),
            decoration: BoxDecoration(
              color: Color(0xFFFFECDF),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: mediaQuery.width * 0.05),
                  child: Text(title,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25)),
                ),
                Container(
                  padding: EdgeInsets.only(right: mediaQuery.width * 0.02),
                  height: mediaQuery.height * 0.08,
                  width: mediaQuery.width * 0.25,
                  child: Image.asset(image,fit: BoxFit.cover),
                ),
              ],
            ),
          ),
          SizedBox(height: mediaQuery.height * 0.025)
        ],
      ),
    );
  }
}
