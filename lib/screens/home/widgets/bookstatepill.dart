import 'package:app_livres/models/book.dart';
import 'package:app_livres/size_config.dart';
import 'package:flutter/material.dart';

class BookStatePill extends StatelessWidget {

  final BookState state;

  const BookStatePill({Key? key, required this.state}): super(key: key);

  @override
  Widget build(BuildContext context) {

    MediaQueryData _mediaQueryData = MediaQuery.of(context);
    double screenWidth = _mediaQueryData.size.width;
    double screenHeight = _mediaQueryData.size.height;
    Orientation orientation = _mediaQueryData.orientation;


    return Container(
      width: 14,
      height: 14,
      margin: EdgeInsets.only(left: getProportionateScreenWidth(15, screenWidth)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: state.textColor,
      ),
    );
  }
}
