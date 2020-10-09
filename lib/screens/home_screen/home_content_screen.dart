import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/widgets/home_widgets/classifications.dart';
import 'package:mawasm_bookstore/widgets/home_widgets/grid_home_button_one.dart';
import 'package:mawasm_bookstore/widgets/home_widgets/grid_home_button_two.dart';
import 'package:mawasm_bookstore/widgets/home_widgets/home_carousel.dart';
import 'package:mawasm_bookstore/widgets/home_widgets/text_show.dart';
import '../signin_screen.dart';
import '../signup_screen.dart';

class HomeContentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return ListView(
      shrinkWrap: true,
      children: [
        Column(
          children: [
            SizedBox(height: mediaQuery.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: mediaQuery.height * 0.04,
                      width: mediaQuery.width * 0.3,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFECDF),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    )),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.04),
                  child: Image.asset('images2/logo.png',
                      height: mediaQuery.height * 0.15),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, SignUpScreen.routeName);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: mediaQuery.height * 0.04,
                      width: mediaQuery.width * 0.3,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFECDF),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'تسجيل حساب',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    )),
              ],
            ),
            Container(
              height: mediaQuery.height * 0.055,
              margin: EdgeInsets.symmetric(
                vertical: mediaQuery.height * 0.02,
                horizontal: mediaQuery.width * 0.05,
              ),
              child: TextField(
                textAlign: TextAlign.end,
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
                decoration: InputDecoration(
                  hintText: 'ما الذي تبحث عنه ؟',
                  hintStyle:
                      TextStyle(color: Colors.grey.shade600, fontSize: 18),
                  contentPadding:
                      EdgeInsets.only(right: mediaQuery.width * 0.04),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: mediaQuery.width * 0.05),
                    child: Icon(Icons.search, color: Colors.black38),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(color: Colors.red, width: 0.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(color: Colors.blue, width: 1.5),
                  ),
                ),
              ),
            ),
            HomeCarousel(),
            TextShow(
                height: mediaQuery.height * .085,
                text:
                    'منذ عام 2000 ونحن نقدم منتجات المكتبات وخدمات الطباعة والخدمات الالكترونية لعملائنا'),
            Classifications(),
            TextShow(
                height: mediaQuery.height * .11,
                text:
                    'ادواتك المكتبية كلها فى مكان واحد ,, اقتني احتيجاتك من مكان واحد وانت فى مكانك وادفع اون لاين نصلك حيثما كنت ,, نحن هنا من اجلك '),
            GridHomeButtonOne(),
            TextShow(
              height: mediaQuery.height * .11,
              text:
                  'يمكنك اختيار أي من وسائل الدفع الآمنة والسريعة المتوفرة في المنصة، ايضا يمكنك الحصول على طلبك عند باب المنزل او الذهاب لاستلامه من منافذ البيع ',
            ),
            GridHomeButtonTwo()
          ],
        ),
      ],
    );
  }
}
