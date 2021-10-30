import 'package:app_livres/screens/book_detail/book_detail_screen.dart';
import 'package:app_livres/screens/forgot_password/forgot_password_screen.dart';
import 'package:app_livres/screens/home/home_screen.dart';
import 'package:app_livres/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
};