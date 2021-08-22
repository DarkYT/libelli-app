import 'package:flutter/foundation.dart';

class Book {

  final String id;
  final String isbn;
  final String title;
  final String author;
  final String edition;
  final int publicationYear;

  Book({
    required this.id,
    required this.isbn,
    required this.title,
    required this.author,
    required this.edition,
    required this.publicationYear
  });

}