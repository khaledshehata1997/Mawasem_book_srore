import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mawasm_bookstore/services/word_press.dart';
import '../showproduct_screen.dart';

class BagsScreen extends StatefulWidget {
  static String routeName = '/BagsScreen';
  @override
  _SchoolToolsScreenState createState() => _SchoolToolsScreenState();
}

class _SchoolToolsScreenState extends State<BagsScreen> {
  int pageChanged = 0;
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text('قسم الشنط',
              textAlign: TextAlign.center,
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
        body: FutureBuilder(
            future: fetchBags(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, dynamic index) {
                      return Column(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              width: mediaQuery.width * 0.45,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.blue.shade200, width: 1.5),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Material(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                          return ShowContentScreen(  id: snapshot.data[index].id,
                                            image: snapshot.data[index].image,
                                            name: snapshot.data[index].name,
                                            description: snapshot.data[index].description,
                                            regular_price: snapshot.data[index].regular_price,
                                          );
                                        }));
                                  },
                                  child: GridTile(
                                      child: Image.network(
                                          snapshot.data[index].image,
                                          fit: BoxFit.fill)),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              SizedBox(height: mediaQuery.height * 0.01),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.04),
                                child: Text("${snapshot.data[index].name}",
                                    textAlign: TextAlign.center,
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey.shade700,
                                        fontWeight: FontWeight.w500)),
                              ),
                              SizedBox(height: mediaQuery.height * 0.005),
                              Text("رس${snapshot.data[index].regular_price}",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black)),
                              GestureDetector(
                                onTap: () {
                                  // cart logic
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: mediaQuery.width * 0.03,
                                      vertical: mediaQuery.height * 0.007),
                                  height: mediaQuery.height * 0.035,
                                  color: Colors.red,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text("إضافة إلي السلة",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white)),
                                      SizedBox(width: mediaQuery.width * 0.015),
                                      Icon(
                                        Icons.shopping_basket,
                                        color: Colors.white,
                                        size: 15,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    });
              } else
                return Center(child: CircularProgressIndicator());
            }));
  }
}
