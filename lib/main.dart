import 'package:app_livres/routes.dart';
import 'package:app_livres/screens/sign_in/sign_in_screen.dart';

import 'screens/home/home_screen.dart';
import 'package:app_livres/theme.dart';
import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Libelli',
        debugShowCheckedModeBanner: false,
        theme: theme(),
        home: SignInScreen(),
        routes: routes,
    );
  }
}
