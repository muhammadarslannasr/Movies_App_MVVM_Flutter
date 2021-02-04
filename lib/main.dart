import 'package:flutter/material.dart';
import 'package:flutter_movies_mvvm_app/pages/movie_list_page.dart';
import 'package:flutter_movies_mvvm_app/view%20models/movie_list_view_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Movies",
        home:
        ChangeNotifierProvider(
          create: (context) => MovieListViewModel(),
          child: MovieListPage(),
        )
    );
  }

}
