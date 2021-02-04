import 'package:flutter/material.dart';
import 'package:flutter_movies_mvvm_app/services/webservice.dart';
import 'package:flutter_movies_mvvm_app/view%20models/movie_view_model.dart';

class MovieListViewModel extends ChangeNotifier {

  var isLoading = false;
  List<MovieViewModel> movies = List<MovieViewModel>();


  Future<void> fetchMovies(String keyword) async {

    isLoading = true;

    final results =  await Webservice().fetchMovies(keyword);
    this.movies = results.map((item) => MovieViewModel(movie: item)).toList();
    print(this.movies);

    isLoading = false;

    notifyListeners();
  }

}