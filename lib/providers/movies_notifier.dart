import 'package:flutter/material.dart';
import 'package:studio_ghibli_app/repository/common/api/amplify_api_logic.dart';
import 'package:studio_ghibli_app/repository/common/api/ghibli_api_logic.dart';
import 'package:studio_ghibli_app/repository/entities/movie_model.dart';

class MoviesNotifier extends ChangeNotifier {
  final List<Movie> _movieList = [];

  List<Movie> get movies => _movieList;

  List<Movie> getAll() {
    if (_movieList.isEmpty) {
      fetchMovies().then((movies) {
        movies.forEach((movie) {
          queryMovieImages(movie).then((images){
            if (images != null) {
              movie.imageUrls = images;
            }
          });
          _movieList.add(movie);
        });
        notifyListeners();
      });
      return _movieList;
    } else {
      return _movieList;
    }
  }
}