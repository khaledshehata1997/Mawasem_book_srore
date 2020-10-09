import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/screens/gridview_show_screens/adwat_maktabia.dart';
import 'package:mawasm_bookstore/screens/gridview_show_screens/alqrtasia.dart';
import 'package:mawasm_bookstore/screens/gridview_show_screens/schooltools_screen.dart';

class GridHomeButtonOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.02),
      child: Column(
        children: <Widget>[
          SizedBox(height: mediaQuery.height*0.01),
          Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AlqrtasiasScreen.routeName);
                  },
                  child: Column(
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey)
                          ),
                          height: mediaQuery.height * 0.12,
                          width: mediaQuery.width * 0.3,
                          child: Image.asset('images2/قرطاسيه ودفاتر.jpg')),
                      SizedBox(height: 5),
                      Text('القرطاسية والدفاتر',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SchoolToolsScreen.routeName);
                  },
                  child: Column(
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey)
                          ),
                          height: mediaQuery.height * 0.12,
                          width: mediaQuery.width * 0.3,
                          child: Image.asset('images2/ادوات مدرسيه.jpg')),
                      SizedBox(height: 5),
                      Text('أدوات مدرسية',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: mediaQuery.height*0.02),
          Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, LibToolScreen.routeName);
                  },
                  child: Column(
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey)
                          ),
                          height: mediaQuery.height * 0.12,
                          width: mediaQuery.width * 0.3,
                          child: Image.asset('images2/ادوات مكتبيه.jpg')),
                      SizedBox(height: 5),
                      Text('أدوات مكتبية',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AlqrtasiasScreen.routeName);
                  },
                  child: Column(
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey)
                          ),
                          height: mediaQuery.height * 0.12,
                          width: mediaQuery.width * 0.3,
                          child: Image.asset('images2/computer.jpg')),
                      SizedBox(height: 5),
                      Text('الكمبيوتر وملحقاته',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
