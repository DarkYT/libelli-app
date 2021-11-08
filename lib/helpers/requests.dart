import 'dart:convert';

import 'package:app_livres/config.dart';
import 'package:http/http.dart' as http;

Future<String> fetchBookDetails(isbn) async {
  final response = await http.get(Uri.parse('https://www.googleapis.com/books/v1/volumes?q=isbn:'+isbn+'&key='+GOOGLE_API_KEY));

  if(response.statusCode == 200) {
    return jsonDecode(response.body).toString();
  }

  return "C'est le zbeul";
}
