import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/widgets/default_button.dart';

class Choose extends StatelessWidget {
  static String routeName = '/Choose';
final String regular_price ;
final String name;


  const Choose({Key key, this.regular_price, this.name}) : super(key: key);@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                Text(name),
              Text(regular_price),
                Text('تم اضافة هذا المنتج الي العربه',style: TextStyle(
                  fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold
                ),),
                DefaultButton(
                  text: 'مواصلة التسوق',
                  press: (){},
                ),
                SizedBox(height: 30,),
                DefaultButton(
                  text: 'شراء الان',
                  press: (){},

                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
