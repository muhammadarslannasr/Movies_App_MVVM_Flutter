import 'dart:convert';

import 'package:flutter_movies_mvvm_app/models/movie.dart';
import 'package:http/http.dart' as http;

class Webservice {

  Future<List<Movie>> fetchMovies(String keyword) async {

    final url = "http://www.omdbapi.com/?s=$keyword&apikey=8e3a944a";
    final response = await http.get(url);
    if(response.statusCode == 200) {

      final body = jsonDecode(response.body);
      final Iterable json = body["Search"];
      return json.map((movie) => Movie.fromJson(movie)).toList();

    } else {
      throw Exception("Unable to perform request!");
    }
  }
}