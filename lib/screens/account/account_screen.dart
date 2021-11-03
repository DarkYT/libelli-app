import 'package:app_livres/screens/home/home_screen.dart';
import 'package:app_livres/screens/home/widgets/topbar.dart';
import 'package:app_livres/size_config.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {

  static String routeName = "/account";

  @override
  Widget build(BuildContext context) {

    MediaQueryData _mediaQueryData = MediaQuery.of(context);
    double screenWidth = _mediaQueryData.size.width;
    double screenHeight = _mediaQueryData.size.height;
    Orientation orientation = _mediaQueryData.orientation;

    return Scaffold(
      bottomNavigationBar: BottomBar(screenWidth: screenWidth, screenHeight: screenHeight, currentPage: Pages.Account,),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(24, screenHeight),),
              TopBar(screenWidth: screenWidth, screenHeight: screenHeight),
              SizedBox(height: getProportionateScreenHeight(24, screenHeight),),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Mes informations',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
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
