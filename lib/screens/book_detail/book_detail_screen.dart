import 'package:app_livres/models/book.dart';
import 'package:app_livres/size_config.dart';
import 'package:flutter/material.dart';

class BookDetailScreen extends StatelessWidget {

  static String routeName = "/book_detail";
  final BookAd book;

  const BookDetailScreen({Key? key, required this.book}): super(key: key);

  @override
  Widget build(BuildContext context) {

    MediaQueryData _mediaQueryData = MediaQuery.of(context);
    double screenWidth = _mediaQueryData.size.width;
    double screenHeight = _mediaQueryData.size.height;
    Orientation orientation = _mediaQueryData.orientation;

    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text(
              "Détail de l'offre",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18, screenWidth)),
                  child: SizedBox(
                    width: double.infinity,
                    height: getProportionateScreenHeight(280, screenHeight),
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getProportionateScreenHeight(200, screenHeight),
                        child: Image.asset("assets/images/895-8959915_please-note-jk-rowling-harry-potter-book-cover 1.png", fit: BoxFit.fitHeight,),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24,),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    boxShadow: [BoxShadow(
                        color: Colors.black.withOpacity(0.06),
                        blurRadius: 20

                      )]
                    ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18, screenWidth)),
                    child: Column(
                      children: [

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
