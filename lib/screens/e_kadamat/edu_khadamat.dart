import 'package:flutter/material.dart';

class EduKhadamat extends StatefulWidget {
  static String routeName = '/EduKhadamat';
  @override
  _ProductsCateogriesState createState() => _ProductsCateogriesState();
}

class _ProductsCateogriesState extends State<EduKhadamat> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('المنتجات',
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
      body:  ListView(
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
    /*ListView(
        children: [
          Column(
            children: [

              Row(
                children: [
                  menProducts('images2/IMG-20200921-WA0018.jpg','khaled','85 رس'),
                  menProducts('images2/IMG-20200921-WA0018.jpg','khaled','85 رس'),

                ],
              ),
              SizedBox(height: 15,), Row(
                children: [
                  menProducts('images2/IMG-20200921-WA0018.jpg','khaled','85 رس'),
                  menProducts('images2/IMG-20200921-WA0018.jpg','khaled','85 رس'),

                ],
              ),
              SizedBox(height: 15,), Row(
                children: [
                  menProducts('images2/IMG-20200921-WA0018.jpg','khaled','85 رس'),
                  menProducts('images2/IMG-20200921-WA0018.jpg','khaled','85 رس'),

                ],
              ),
              SizedBox(height: 15,),

            ],
          )
        ],
      )
    );
  }
  menProducts(String image,title,price){
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            height: MediaQuery.of(context).size.height*.25,
            margin: EdgeInsets.only(left: 15,right: 15,top: 10),
            width: MediaQuery.of(context).size.width*.4,
            child: GestureDetector(
                onTap: (){
                 },
                child:Image.asset(
                  image,fit: BoxFit.fill,)
            ),
          ),
          SizedBox(height: 5),
          Text(title,style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),),
          Text(price,style: TextStyle(color: Colors.deepOrange),textDirection: TextDirection.rtl,)

        ],
      ),
    )ListView(
        children: [
          Column(
            children: [

              Row(
                children: [
                  menProducts('images2/IMG-20200921-WA0018.jpg','khaled','85 رس'),
                  menProducts('images2/IMG-20200921-WA0018.jpg','khaled','85 رس'),

                ],
              ),
              SizedBox(height: 15,), Row(
                children: [
                  menProducts('images2/IMG-20200921-WA0018.jpg','khaled','85 رس'),
                  menProducts('images2/IMG-20200921-WA0018.jpg','khaled','85 رس'),

                ],
              ),
              SizedBox(height: 15,), Row(
                children: [
                  menProducts('images2/IMG-20200921-WA0018.jpg','khaled','85 رس'),
                  menProducts('images2/IMG-20200921-WA0018.jpg','khaled','85 رس'),

                ],
              ),
              SizedBox(height: 15,),

            ],
          )
        ],
      )
    );
  }
  menProducts(String image,title,price){
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            height: MediaQuery.of(context).size.height*.25,
            margin: EdgeInsets.only(left: 15,right: 15,top: 10),
            width: MediaQuery.of(context).size.width*.4,
            child: GestureDetector(
                onTap: (){
                 },
                child:Image.asset(
                  image,fit: BoxFit.fill,)
            ),
          ),
          SizedBox(height: 5),
          Text(title,style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),),
          Text(price,style: TextStyle(color: Colors.deepOrange),textDirection: TextDirection.rtl,)

        ],
      ),
    )*/
  }
}
