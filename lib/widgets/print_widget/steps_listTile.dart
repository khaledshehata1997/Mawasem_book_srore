
import 'package:flutter/material.dart';

class CustomedListTile extends StatelessWidget {
  final String title , desc ;
  final IconData icon;
  CustomedListTile({
    @required this.title,
    @required this.desc,
    @required this.icon
});
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.03),
          padding: EdgeInsets.symmetric(vertical: mediaQuery.height*0.02),
          decoration: BoxDecoration(
            color: Color(0xFFFFECDF),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
              leading: Icon(
                icon,
                color: Colors.deepOrange,
                size: 35,
              ),
              title: Text(
                title,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                desc,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                ),
              ),
          ),
        ),
        SizedBox(height: mediaQuery.height * 0.015),
      ],
    );
  }
}
