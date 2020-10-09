import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/services/constants.dart';
import 'package:mawasm_bookstore/services/word_press.dart';

class HomeCarousel extends StatefulWidget {
  @override
  _HomeCarouselState createState() => _HomeCarouselState();
}

class _HomeCarouselState extends State<HomeCarousel> {
  int currentPage = 0;
  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      height: 6,
      width: currentPage == index ? 20 : 6,
      margin: EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  carouselWidget(String url) {
    return Container(
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          child: Stack(
            children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.height * .21,
                  width: MediaQuery.of(context).size.width * 1.0,
                  child: Image.network(
                    url,
                    fit: BoxFit.fill,
                  )),
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FutureBuilder(
          future: showSliders(),
          builder: (context, snapShot) {
            if (snapShot.hasData) {
              return CarouselSlider(
                items: List.generate(
                    snapShot.data.length,
                    (index) => carouselWidget(
                          snapShot.data[index]["image"],
                        )),
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentPage = index;
                      });
                    }),
              );
            }
            return Center(child: CircularProgressIndicator());
          }),
      // SizedBox(height: 0),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          3,
          (index) => buildDot(index: index),
        ),
      ),
    ]);
  }
}
