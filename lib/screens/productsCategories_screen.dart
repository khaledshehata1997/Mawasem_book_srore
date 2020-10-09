//khaled
import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/screens/gridview_show_screens/schooltools_screen.dart';
import 'package:mawasm_bookstore/widgets/categories_products/product_category_card.dart';

import 'gridview_show_screens/adwat_khiata.dart';
import 'gridview_show_screens/adwat_maktabia.dart';
import 'gridview_show_screens/akyas_alhdaya.dart';
import 'gridview_show_screens/alboya_bakhakh.dart';
import 'gridview_show_screens/alqrtasia.dart';
import 'gridview_show_screens/arts_tool.dart';
import 'gridview_show_screens/atflal_games.dart';
import 'gridview_show_screens/bags.dart';
import 'gridview_show_screens/books.dart';
import 'gridview_show_screens/electronic_games.dart';
import 'gridview_show_screens/men_execwarat.dart';
import 'gridview_show_screens/moshaf.dart';
import 'gridview_show_screens/pens.dart';
import 'gridview_show_screens/tjaleed.dart';

class ProductsCateogries extends StatefulWidget {
  static String routeName = '/products-category';
  @override
  _ProductsCateogriesState createState() => _ProductsCateogriesState();
}

class _ProductsCateogriesState extends State<ProductsCateogries> {
  final List<Map<String, dynamic>> categoreisOfProducts = [
    {
      "image": "images2/ادوات مدرسيه.jpg",
      "text": "أدوات مدرسية",
      "press": SchoolToolsScreen.routeName
    },
    {
      "image": "images2/ادوات الخياطه.jpg",
      "text": "أدوات الخياطة",
      "press": KhiataToolScrren.routeName
    },
    {
      "image": "images2/ادوات مكتبيه.jpg",
      "text": "البوية بخاخ",
      "press": AlbouaBakhakhScreen.routeName
    },
    {
      "image": "images2/العاب الكترونيه.jpg",
      "text": "الألعاب الالكترونية",
      "press": ElectronicGamesScreen.routeName
    },
    {
      "image": "images2/اكسسوارات رجاليه.jpg",
      "text": "الإكسسورات الرجالية",
      "press": MenExecwaratScreen.routeName
    },
    {
      "image": "images2/قرطاسيه ودفاتر.jpg",
      "text": "القرطاسية والدفاتر",
      "press": AlqrtasiasScreen.routeName
    },
    {
      "image": "images2/شنط.jpg",
      "text": "قسم الشنط",
      "press": BagsScreen.routeName
    },
    {
      "image": "images2/مصاحف.jpg",
      "text": "المصاحف",
      "press": MoshafScreen.routeName
    },
    {
      "image": "images2/كتب.jpg",
      "text": "الكتب",
      "press": BooksScreen.routeName
    },
    {
      "image": "images2/العاب اطفال.jpg",
      "text": "ألعاب اطفال",
      "press": AtfalGamessScreen.routeName
    },
    {
      "image": "images2/اقلام.jpg",
      "text": "الاقلام",
      "press": PensScreen.routeName
    },
    {
      "image": "images2/تجاليد.jpg",
      "text": "التجاليد",
      "press": TagaleedScreen.routeName
    },
    {
      "image": "images2/ادوات فنيه.jpg",
      "text": "الأدوات الفنية",
      "press": ArtsToolScreen.routeName
    },
    {
      "image": "images2/ادوات مكتبيه.jpg",
      "text": "أدوات مكتبية",
      "press": LibToolScreen.routeName
    },
    {
      "image": "images2/اكياس وتغليف الهدايا.jpg",
      "text": "أكياس وتغليف الهدايا",
      "press": AkyasAlhadayaScreen.routeName
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('المنتجات',
            style: TextStyle(color: Colors.grey, fontSize: 25)),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black54,
            )),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemCount: categoreisOfProducts.length,
        itemBuilder: (context, index) {
          return ProductsCategoryCard(
            press: () {
              Navigator.pushNamed(
                  context, categoreisOfProducts[index]["press"]);
            },
            image: categoreisOfProducts[index]['image'],
            title: categoreisOfProducts[index]['text'],
          );
        },
      ),
    );
  }
}
