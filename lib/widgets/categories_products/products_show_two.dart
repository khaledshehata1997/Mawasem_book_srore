import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/screens/showproduct_screen.dart';

class ProductsShowTwo extends StatelessWidget {
  final Future method;
  ProductsShowTwo({this.method});
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return FutureBuilder(
        future: method,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      Container(
                        height: mediaQuery.height * 0.20,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(
                          horizontal: mediaQuery.width * 0.04,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.blue.shade200, width: 1.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: GestureDetector(
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
                          child: Image.network(snapshot.data[index].image,
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: mediaQuery.width * 0.02),
                        child: ListTile(
                          trailing: Text("${snapshot.data[index].name}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500)),
                          leading: Text("رس${snapshot.data[index].regular_price}",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.deepOrange.shade900)),
                        ),
                      )
                    ],
                  );
                });
          } else
            return Center(child: CircularProgressIndicator());
        });
  }
}
