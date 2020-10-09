import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(color: Color(0xFF49090B)),
        SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: mediaQuery.height * 0.04,
                ),
                Image.asset('images2/logo.png',
                    height: mediaQuery.height * 0.26),
                SizedBox(height: mediaQuery.height * 0.07),
                Text(
                  'مكتبة مواسم',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: mediaQuery.height * 0.02,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.04),
                  child: Text(
                    'الفرع الرئيسي احد رفيدة شارع الملك خالد مقابل سوق العثيم 7215 جنوبا الى احد رفيده و شمالا الى خميس مشيط، وسط البلد، أحد رفيدة',
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: mediaQuery.height * 0.07),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.05),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'للدعم الفني أو الشكاوى يمكنك التواصل معنا عبر',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: mediaQuery.height * 0.005),
                      GestureDetector(
                        onTap: () {
                          customLaunch(
                              'mailto:mawasmbookstore@gmail.com?subject=test%20subject&body=test%20body');
                        },
                        child: Text(
                          'mawasmbookstore@gmail.com',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: mediaQuery.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                   GestureDetector(
                     onTap: (){
                       customLaunch('tel:00966555681125');
                     },
                     child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 25,
                      child: Icon(Icons.call, size: 28, color: Colors.white)),
                   ),
                    SizedBox(width: mediaQuery.width * 0.03),
                    GestureDetector(
                        onTap: () async {
                          const url =
                              'https://api.whatsapp.com/send?phone=00966555681125&text=&source=&data=&app_absent= ';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 25,
                            child: FaIcon(FontAwesomeIcons.whatsapp,
                                size: 28, color: Colors.white))),

                  ],
                )
                // Padding(
                //   padding: EdgeInsets.only(right: mediaQuery.width * 0.1),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: <Widget>[
                //       GestureDetector(

                //         child: Text(
                //           '00966555681125',
                //           style: TextStyle(
                //               fontSize: 17,
                //               color: Colors.blue,
                //               fontWeight: FontWeight.bold),
                //         ),
                //       ),
                //       SizedBox(width: mediaQuery.width * 0.03),
                //       Text('الواتساب',
                //           style: TextStyle(color: Colors.white, fontSize: 20))
                //     ],
                //   ),
                // ),
                // SizedBox(height: mediaQuery.height * 0.02),
                // Padding(
                //   padding: EdgeInsets.only(right: mediaQuery.width * 0.1),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: <Widget>[
                //       GestureDetector(
                //         onTap: () {
                //
                //         },
                //         child: Text(
                //           '00966555681125',
                //           style: TextStyle(
                //               fontSize: 17,
                //               color: Colors.blue,
                //               fontWeight: FontWeight.bold),
                //         ),
                //       ),
                //       SizedBox(width: mediaQuery.width * 0.05),
                //       Text('الهاتف',
                //           style: TextStyle(color: Colors.white, fontSize: 20))
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        )
      ],
    );

    //   Container(
    //   decoration: BoxDecoration(
    //       color: Color(0xFFFFECDF), borderRadius: BorderRadius.circular(10)),
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: <Widget>[
    //       Text('تواصل معنا من خلال',
    //           style: TextStyle(fontSize: 30, color: Colors.black)),
    //       Padding(
    //         padding: EdgeInsets.symmetric(
    //             horizontal: MediaQuery.of(context).size.width * 0.28),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: <Widget>[
    //             GestureDetector(
    //               onTap: () {
    //
    //               },
    //               child:



    //             GestureDetector(

    //               child: CircleAvatar(
    //                   radius: 25,
    //                   child: Icon(
    //                     Icons.mail,
    //                     size: 28,
    //                   )),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
