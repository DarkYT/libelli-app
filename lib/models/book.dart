import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

enum BookState{
  High,
  Medium,
  Low
}

extension BookStateExtension on BookState {

  Color get bgColor {
    switch (this) {
      case BookState.High : return Color(0xff32D418);
      case BookState.Medium : return Color(0xffFFA724);
      case BookState.Low : return Color(0xffff0000);
    }
  }

  Color get textColor {
    switch (this) {
      case BookState.High : return Color(0xffacffc3);
      case BookState.Medium : return Color(0xffffc99b);
      case BookState.Low : return Color(0xffff7373);
    }
  }

  String get text {
    switch (this) {
      case BookState.High : return "Très bon état";
      case BookState.Medium : return "Bon état";
      case BookState.Low : return "Mauvais état";
    }
  }

}

class BookAd {

  final int id;
  final String isbn;
  final String title;
  final String author;
  final String edition;
  final int publicationYear;
  final BookState state;
  final double price;

  BookAd({
    required this.id,
    required this.isbn,
    required this.title,
    required this.author,
    required this.edition,
    required this.publicationYear,
    required this.state,
    required this.price
  });

  String get parsedPrice {
    return "\$"+double.parse((this.price).toStringAsFixed(2)).toString();
  }

}