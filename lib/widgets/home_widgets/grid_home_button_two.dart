import 'package:flutter/material.dart';

class GridHomeButtonTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SizedBox(height: mediaQuery.height*0.01),
        Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green.shade200)
                      ),
                      height: mediaQuery.height * 0.11,
                      width: mediaQuery.width * 0.25,
                      child: Image.asset('images2/أسعار منافسة.png')),
                  SizedBox(height: 5),
                  Text('أسعار منافسة',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green.shade200)
                      ),
                      height: mediaQuery.height * 0.11,
                      width: mediaQuery.width * 0.25,
                      child: Image.asset('images2/سهولة استخدام التطبيق.png')),
                  SizedBox(height: 5),
                  Text('سهولة استخدام التطبيق',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green.shade200)
                      ),
                      height: mediaQuery.height * 0.11,
                      width: mediaQuery.width * 0.25,
                      child: Image.asset('images2/مطبوعاتك حسب رغبتك.png')),
                  SizedBox(height: 5),
                  Text('مطبوعاتك حسب رغبتك',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: mediaQuery.height*0.02),
        Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green.shade200)
                      ),
                      height: mediaQuery.height * 0.11,
                      width: mediaQuery.width * 0.25,
                      child: Image.asset('images2/سهولة الدفع.png')),
                  SizedBox(height: 5),
                  Text('سهولة الدفع',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green.shade200)
                      ),
                      height: mediaQuery.height * 0.11,
                      width: mediaQuery.width * 0.25,
                      child: Image.asset('images2/تنوع طرق التوصيل.png')),
                  SizedBox(height: 5),
                  Text('تنوع طرق التوصيل',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green.shade200)
                      ),
                      height: mediaQuery.height * 0.11,
                      width: mediaQuery.width * 0.25,
                      child: Image.asset('images2/شمولية خدمات الطباعة.png')),
                  SizedBox(height: 5),
                  Text('شمولية خدمات الطباعة',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
