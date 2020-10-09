import 'package:flutter/material.dart';

class StudentKhadamat extends StatefulWidget {
  static String routeName = '/StudentKhadamat';
  @override
  _ProductsCateogriesState createState() => _ProductsCateogriesState();
}

class _ProductsCateogriesState extends State<StudentKhadamat> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('خدمات الطلاب',
            style: TextStyle(color: Colors.black, fontSize: 25)),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black54,
            )),
      ),
      body: ListView(
        children: [
        Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          images("images2/اكسسوارات رجاليه.jpg",'اكسوارات رجالي'),
          SizedBox(height: 15,),
          images("images2/IMG-20200921-WA0015.jpg",'الجوالات وملحقاتها'),
          SizedBox(height: 15,),
          images("images2/الطباعه.jpg",'الطباعه'),
          SizedBox(height: 15,),
          images("images2/قرطاسيه ودفاتر.jpg",'الكتب'),
          SizedBox(height: 15,),
          images("images2/شنط.jpg",'الشنط'),
          SizedBox(height: 15,),
          images("images2/الخدمات الالكترونيه.jpg",'الخدمات الالكترونيه'),
          SizedBox(height: 15,),
          images("images2/مصاحف.jpg",'المصحف'),
          SizedBox(height: 15,),
          images("images2/IMG-20200921-WA0027.jpg",'تجاليد'),
          SizedBox(height: 15,),
          images("images2/IMG-20200921-WA0028.jpg",'اكياس وتغالف الهداي'),
          SizedBox(height: 15,),

          images("images2/IMG-20200921-WA0030.jpg",'ادوات الخياطه'),
          SizedBox(height: 15,),
          images("images2/ادوات مكتبيه.jpg",'ادوات مكتبيه'),
          SizedBox(height: 15,),
          images("images2/ادوات مدرسيه.jpg",'ادوات مدرسيه'),
          SizedBox(height: 15,),
          images("images2/ادوات فنيه.jpg",'الوان'),
          SizedBox(height: 15,),
          images("images2/العاب الكترونيه.jpg",'الكمبيوتر وملحقاته'),
          SizedBox(height: 15,),
          images("images2/كتب.jpg",'كتب'),
          SizedBox(height: 15,),
          images("images2/العاب اطفال.jpg",'العاب اطفال'),
          SizedBox(height: 15,),
          images("images2/اقلام.jpg",'الاقلام'),



        ],
      ),

    ])
    );
  }
  images(String image,text){
    return Column(
      children: <Widget>[
        Container(
          color: Colors.deepOrange[200],
          child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'Donor');
              },
              child:Image.asset(
                image,width: MediaQuery.of(context).size.width*.8,height:MediaQuery.of(context).size.height*.2,)
          ),
        ),
        SizedBox(height: 8),
        Text(text,style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),)
      ],
    );

  }
}
