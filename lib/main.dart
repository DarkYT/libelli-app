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
        title: 'Application Livres',
        debugShowCheckedModeBanner: false,
        theme: theme(),
        home: HomeScreen(),
        routes: {

        },
    );
  }
}
