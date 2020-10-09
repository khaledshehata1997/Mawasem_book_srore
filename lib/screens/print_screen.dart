import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/widgets/default_button.dart';
import 'package:mawasm_bookstore/widgets/print_widget/steps_listTile.dart';
import 'print_webView_screen.dart';

class PrintScreen extends StatefulWidget {
  static String routeName = '/Print';

  @override
  _PrintScreenState createState() => _PrintScreenState();
}

class _PrintScreenState extends State<PrintScreen> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title:
            Text('الطباعة', style: TextStyle(color: Colors.grey, fontSize: 25)),
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
            children: <Widget>[
              SizedBox(height: mediaQuery.height * 0.02),
              Text(
                'كيف اطبع ؟',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.03),
              CustomedListTile(
                title: 'ارفع المستند',
                desc: 'بعـد تسجيل الدخول إلى حسابك قم برفع الملف بصيغة pdf بأمان وخصوصية عالية',
                icon: Icons.publish,
              ),
              CustomedListTile(
                title:  'حدد خيارات الطباعة',
                desc: 'مثل نوع الطباعة وحجم الورق ونوع التغليف مع اختيار آلية التوصيل.',
                icon: Icons.print,
              ),
              CustomedListTile(
                title:  'اختر طريقة الاستلام',
                desc:  ' استلمها بكل سهولة عن طريق نقاط الاستلام او التوصيل السريع او الشحن لمنطقتك',
                icon: Icons.add_shopping_cart,
              ),
              CustomedListTile(
                title: 'حدد طريقة الدفع',
                desc:  'باستخدام بطاقة الصراف مدى او البطاقة الائتمانية او باستخدام الرصيد من المحفظة',
                icon: Icons.monetization_on,
              ),
              SizedBox(height: mediaQuery.height * 0.03),
              Padding(
                padding:
                EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.05),
                child: DefaultButton(
                  text: "إطبع الان",
                  press: () {
                    Navigator.pushNamed(context, PrintWebView.routeName);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
