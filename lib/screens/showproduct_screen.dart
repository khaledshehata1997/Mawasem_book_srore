//khaled
import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/screens/choose.dart';
import 'package:mawasm_bookstore/services/constants.dart';
import 'package:mawasm_bookstore/services/word_press.dart';
import 'package:mawasm_bookstore/widgets/default_button.dart';
import 'choose.dart';

class ShowContentScreen extends StatefulWidget {
  static String routeName = '/tools-1';
  final dynamic name;
  final dynamic quantity;
  final int id;
  final dynamic product_id;
  final dynamic description;
  final String regular_price;
  final dynamic image;
  final dynamic price;
  ShowContentScreen(
      {this.product_id,
      this.name,
      this.quantity,
      this.description,
      this.image,
      this.price,
      this.regular_price,
      @required this.id});

  @override
  _ShowContentScreenState createState() => _ShowContentScreenState();
}

class _ShowContentScreenState extends State<ShowContentScreen> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black54,
              )),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              height: mediaQuery.height * 0.3,
              margin: EdgeInsets.symmetric(
                  horizontal: mediaQuery.width * 0.03,
                  vertical: mediaQuery.height * 0.02),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue.shade200, width: 1.5),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Image.network(widget.image, fit: BoxFit.fill),
            ),
            SizedBox(height: mediaQuery.height * 0.02),
            Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      widget.name,
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.bold),
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(height: mediaQuery.height * 0.008),
                    Text(
                      widget.description.toString().replaceAll('<p>', ""),
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                      textDirection: TextDirection.rtl,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          widget.regular_price + ' رس',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.grey.shade800),
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(width: mediaQuery.width * 0.01),
                        Text(
                          ':السعر العادي',
                          style: TextStyle(
                              fontSize: 22, color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                  ],
                )),
            SizedBox(height: mediaQuery.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      setState(() {
                        quantity--;
                        if (quantity < 1) {
                          quantity = 1;
                        }
                      });
                    },
                    child: Container(
                        color: kPrimaryColor,
                        height: mediaQuery.height * 0.05,
                        width: mediaQuery.width * 0.1,
                        child: Icon(Icons.remove, color: Colors.white))),
                Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: mediaQuery.width * 0.04),
                    child: Text(
                      '$quantity',
                      style: TextStyle(
                          color: Colors.red.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        quantity++;
                      });
                    },
                    child: Container(
                        color: kPrimaryColor,
                        height: mediaQuery.height * 0.05,
                        width: mediaQuery.width * 0.1,
                        child: Icon(Icons.add, color: Colors.purple.shade900))),
              ],
            ),
            SizedBox(height: mediaQuery.height * 0.05),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.05),
              child: DefaultButton(
                  text: 'أضف إلي السلة',
                  press: () async {
                    await addToCart(widget.id.toString(), quantity.toString());
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Choose(
                                  name: widget.name,
                                  regular_price: widget.regular_price,
                                )));
                  }),
            )
          ],
        ));
  }

  alert() {
    return AlertDialog();
  }
}
