import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/screens/khadamat.dart';
import 'package:mawasm_bookstore/screens/print_screen.dart';
import 'package:mawasm_bookstore/screens/productsCategories_screen.dart';
import 'classification_card.dart';

class Classifications extends StatelessWidget {
  final List<Map<String, dynamic>> sales = [
    {
      "image": "images2/ادوات مكتبيه.jpg",
      "text": "المنتجات",
      "press": ProductsCateogries.routeName
    },
    {
      "image": "images2/الخدمات الالكترونيه.jpg",
      "text": "الخدمات الإلكترونية",
      "press": Khadamat.routeName
    },
    {
      "image": "images2/الطباعه.jpg",
      "text": "طباعة الملفات",
      "press": PrintScreen.routeName
    },
  ];
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: mediaQuery.height * 0.02,
          horizontal: mediaQuery.width * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          sales.length,
          (index) => ClassificationCard(
            image: sales[index]["image"],
            text: sales[index]["text"],
            press: () {
              Navigator.pushNamed(context, sales[index]["press"]);
            },
          ),
        ),
      ),
    );
  }
}
