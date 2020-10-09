import 'package:flutter/material.dart';
import 'package:mawasm_bookstore/screens/choose.dart';
import 'package:mawasm_bookstore/screens/e_kadamat/edu_khadamat.dart';
import 'package:mawasm_bookstore/screens/e_kadamat/student_khadamat.dart';
import 'package:mawasm_bookstore/screens/forgotPassword_screen.dart';
import 'package:mawasm_bookstore/screens/gridview_show_screens/adwat_khiata.dart';
import 'package:mawasm_bookstore/screens/gridview_show_screens/adwat_maktabia.dart';
import 'package:mawasm_bookstore/screens/gridview_show_screens/akyas_alhdaya.dart';
import 'package:mawasm_bookstore/screens/gridview_show_screens/alboya_bakhakh.dart';
import 'package:mawasm_bookstore/screens/gridview_show_screens/alqrtasia.dart';
import 'package:mawasm_bookstore/screens/gridview_show_screens/arts_tool.dart';
import 'package:mawasm_bookstore/screens/gridview_show_screens/atflal_games.dart';
import 'package:mawasm_bookstore/screens/gridview_show_screens/bags.dart';
import 'package:mawasm_bookstore/screens/gridview_show_screens/books.dart';
import 'package:mawasm_bookstore/screens/gridview_show_screens/electronic_games.dart';
import 'package:mawasm_bookstore/screens/gridview_show_screens/men_execwarat.dart';
import 'package:mawasm_bookstore/screens/gridview_show_screens/moshaf.dart';
import 'package:mawasm_bookstore/screens/gridview_show_screens/pens.dart';
import 'package:mawasm_bookstore/screens/gridview_show_screens/schooltools_screen.dart';
import 'package:mawasm_bookstore/screens/gridview_show_screens/tjaleed.dart';
import 'package:mawasm_bookstore/screens/home_screen/home_screen.dart';
import 'package:mawasm_bookstore/screens/home_screen/signout_screen.dart';
import 'package:mawasm_bookstore/screens/khadamat.dart';
import 'package:mawasm_bookstore/screens/onBoarding_screen.dart';
import 'package:mawasm_bookstore/screens/print_screen.dart';
import 'package:mawasm_bookstore/screens/print_webView_screen.dart';
import 'package:mawasm_bookstore/screens/productsCategories_screen.dart';
import 'package:mawasm_bookstore/screens/signin_screen.dart';
import 'package:mawasm_bookstore/screens/signup_screen.dart';
import 'package:mawasm_bookstore/screens/splash_screen.dart';
import 'package:mawasm_bookstore/screens/success_screen.dart';

final Map<String, WidgetBuilder> routes = {
  OnBoardingScreen.routeName: (context) => OnBoardingScreen(),
  Choose.routeName: (context) => Choose(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  HomeScreen.routeName: (context)=> HomeScreen(),
  ProductsCateogries.routeName: (context)=> ProductsCateogries(),
  SchoolToolsScreen.routeName: (context)=> SchoolToolsScreen(),
  SuccessScreen.routeName: (context) => SuccessScreen(),
  PrintScreen.routeName: (context) => PrintScreen(),
  PrintWebView.routeName: (context) => PrintWebView(),
  Khadamat.routeName: (context) => Khadamat(),
  EduKhadamat.routeName: (context) => EduKhadamat(),
  StudentKhadamat.routeName: (context) => StudentKhadamat(),
  KhiataToolScrren.routeName: (context) => KhiataToolScrren(),
  LibToolScreen.routeName: (context) => LibToolScreen(),
  AkyasAlhadayaScreen.routeName: (context) => AkyasAlhadayaScreen(),
  AlbouaBakhakhScreen.routeName: (context) => AlbouaBakhakhScreen(),
  AlqrtasiasScreen.routeName: (context) => AlqrtasiasScreen(),
  ArtsToolScreen.routeName: (context) => ArtsToolScreen(),
  AtfalGamessScreen.routeName: (context) => AtfalGamessScreen(),
  BagsScreen.routeName: (context) => BagsScreen(),
  BooksScreen.routeName: (context) => BooksScreen(),
  ElectronicGamesScreen.routeName: (context) => ElectronicGamesScreen(),
  MenExecwaratScreen.routeName: (context) => MenExecwaratScreen(),
  MoshafScreen.routeName: (context) => MoshafScreen(),
  PensScreen.routeName: (context) => PensScreen(),
  TagaleedScreen.routeName: (context) => TagaleedScreen(),
//  ShowContent.routeName: (context) => ShowContent(),
  SignOutScreen.routeName: (context) => SignOutScreen(),
   Splash.routeName: (context) => Splash(),

};
