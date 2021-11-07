import 'package:app_livres/screens/account/account_screen.dart';
import 'package:app_livres/screens/book_detail/book_detail_screen.dart';
import 'package:app_livres/screens/forgot_password/forgot_password_screen.dart';
import 'package:app_livres/screens/home/home_screen.dart';
import 'package:app_livres/screens/scan/scan_result_screen.dart';
import 'package:app_livres/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  AccountScreen.routeName: (context) => AccountScreen(),
  ScanResultScreen.routeName: (context) => ScanResultScreen(),
};