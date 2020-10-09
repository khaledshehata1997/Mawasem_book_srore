import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/screens/signin_screen.dart';
import 'package:mawasm_bookstore/services/constants.dart';
import 'package:mawasm_bookstore/widgets/default_button.dart';
import 'package:mawasm_bookstore/widgets/onboarding_widgets/onboarding_content.dart';

class OnBoardingScreen extends StatefulWidget {
  static String routeName = '/splash';
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  int currentPage = 0;
  List<Map<String, String>> onboardingData = [
    {"text": "!مرحبا بكم في مواسم ، هيا نتسوق", "image": "images/splash_1.png"},
    {
      "text":
          "نحن نساعد الناس على التواصل مع المتجر في جميع أنحاء المملكة العربية السعودية",
      "image": "images/splash_2.png"
    },
    {
      "text": "نعرض الطريقة السهلة للتسوق. فقط ابق في المنزل معنا",
      "image": "images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: onboardingData.length,
                  itemBuilder: (context, index) => OnboardingContent(
                    image: onboardingData[index]["image"],
                    text: onboardingData[index]['text'],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.05),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          onboardingData.length,
                          (index) => buildDot(index: index),
                        ),
                      ),
                      Spacer(flex: 3),
                      DefaultButton(
                        text: "استمر",
                        press: () {
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        },
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
