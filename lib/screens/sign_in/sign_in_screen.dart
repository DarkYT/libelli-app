import 'package:app_livres/screens/sign_in/widgets/sign_form.dart';
import 'package:app_livres/size_config.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {

  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {

    MediaQueryData _mediaQueryData = MediaQuery.of(context);
    double screenWidth = _mediaQueryData.size.width;
    double screenHeight = _mediaQueryData.size.height;
    Orientation orientation = _mediaQueryData.orientation;
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Connexion"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18, screenWidth)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: screenHeight*0.04,),
                  Text("Rebonjour !", style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28, screenWidth),
                    fontWeight: FontWeight.bold
                  ),),
                  Text("Connectez-vous avec votre addresse email \n et votre mot de passe", textAlign: TextAlign.center,),
                  SizedBox(height: screenHeight*0.08,),
                  SignForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
