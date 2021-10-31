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
                    boxShadow: [BoxShadow(
                        color: Colors.black.withOpacity(0.06),
                        blurRadius: 20

                      )]
                    ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18, screenWidth)),
                    child: Column(
                      children: [
                        SizedBox(height: getProportionateScreenHeight(18, screenHeight),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              book.title,
                              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              book.parsedPrice,
                              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(height: getProportionateScreenHeight(18, screenHeight),),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            book.author,
                            style: TextStyle(color: Color(0xff9AA4B1), fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                        ),
                        SizedBox(height: getProportionateScreenHeight(18, screenHeight),),
                        Divider(
                          color: Colors.black.withOpacity(0.15),
                        ),
                        SizedBox(height: getProportionateScreenHeight(18, screenHeight),),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "État du livre: ",
                            style: TextStyle(color: Color(0xff9AA4B1), fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                        ),
                        SizedBox(height: getProportionateScreenHeight(18, screenHeight),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(width: 10, height: 10, decoration: BoxDecoration(color: book.state.bgColor, borderRadius: BorderRadius.circular(5)),),
                            SizedBox(width: getProportionateScreenWidth(8, screenWidth),),
                            Text(book.state.text, style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.normal),)
                          ],
                        ),
                        SizedBox(height: getProportionateScreenHeight(18, screenHeight),),
                        Divider(
                          color: Colors.black.withOpacity(0.15),
                        ),
                        SizedBox(height: getProportionateScreenHeight(18, screenHeight),),
                        Container(
                          width: double.infinity,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet lectus ac metus cursus sagittis. Integer sit amet ornare nisi. Vivamus rhoncus mollis lectus at bibendum. In hac habitasse platea dictumst. Nullam scelerisque, nibh vel condimentum pellentesque, mauris ex lacinia purus, ut aliquam justo ex consectetur erat. Duis sit amet bibendum dolor. Aliquam molestie ipsum nec massa tincidunt varius. Nullam quis luctus erat, vitae vehicula nunc. Donec purus libero, vestibulum accumsan augue eget, feugiat vulputate mauris. Proin euismod ac sapien id laoreet. Curabitur vel interdum odio, id vehicula orci. Suspendisse molestie odio lacinia justo pellentesque bibendum. Quisque id lectus luctus, rutrum metus a, elementum lorem.",
                            style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.normal)
                          ),
                        )
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
