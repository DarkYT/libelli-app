import 'dart:math';

import 'package:app_livres/models/book.dart';
import 'package:app_livres/routes.dart';
import 'package:app_livres/screens/book_detail/book_detail_screen.dart';
import 'package:app_livres/screens/home/widgets/bookstatepill.dart';
import 'package:app_livres/size_config.dart';
import 'package:flutter/material.dart';

class Ad extends StatelessWidget {

  final BookAd book;

  const Ad({Key? key, required this.book}): super(key:  key);

  @override
  Widget build(BuildContext context) {

    MediaQueryData _mediaQueryData = MediaQuery.of(context);
    double screenWidth = _mediaQueryData.size.width;
    double screenHeight = _mediaQueryData.size.height;
    Orientation orientation = _mediaQueryData.orientation;

    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18, screenWidth)),
            child: InkWell(
              onTap: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BookDetailScreen(book: book)))
              },
              child: Container(
                width: double.infinity,
                height: getProportionateScreenHeight(125, screenHeight),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    blurRadius: 20,
                  )]
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Image.asset("assets/images/895-8959915_please-note-jk-rowling-harry-potter-book-cover 1.png"),
                      ),
                      Expanded(
                        flex: 6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                            children: [
                              Text(
                              book.title,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),
                            ),
                              BookStatePill(state: book.state)
                            ]
                            ),
                            Text(
                              book.author,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff9AA4B1)
                              ),
                            ),
                            Text(
                              "\$"+double.parse((book.price).toStringAsFixed(2)).toString(),
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
        ),
        SizedBox(height: getProportionateScreenHeight(24, screenHeight),),
      ],
    );
  }
}
