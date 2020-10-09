import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/screens/showproduct_screen.dart';

class ProductsShowOne extends StatelessWidget {
  final Future method;
  ProductsShowOne({this.method});
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return FutureBuilder(
        future: method,
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
                                  return ShowContentScreen(
                                    id: snapshot.data[index].id,
                                    quantity: snapshot.data[index].quantity,
                                      image: snapshot.data[index].image,
                                      name: snapshot.data[index].name,
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
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: mediaQuery.height * 0.009,
                            horizontal: mediaQuery.width * 0.04),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("رس${snapshot.data[index].regular_price}",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.deepOrange.shade900)),
                            Text("${snapshot.data[index].name}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ],
                  );
                });
          } else
            return Center(child: CircularProgressIndicator());
        });
  }
}
