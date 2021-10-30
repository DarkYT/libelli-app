import 'dart:math';

import 'package:app_livres/models/book.dart';
import 'package:app_livres/screens/home/widgets/book_ad.dart';
import 'package:app_livres/size_config.dart';
import 'package:flutter/material.dart';

class Ads extends StatelessWidget {

  final double screenWidth;
  final double screenHeight;

  const Ads({Key? key, required this.screenWidth, required this.screenHeight}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i = 0; i < 10 ; i++)
          Ad(book: BookAd(
            id: i,
            isbn: "000"+i.toString(),
            title: "Livre "+i.toString(),
            author: "Marius",
            edition: "Libelli",
            publicationYear: 2021,
            state: BookState.values[Random().nextInt(BookState.values.length)],
            price: Random().nextDouble()*100))
      ],
    );
  }
}
