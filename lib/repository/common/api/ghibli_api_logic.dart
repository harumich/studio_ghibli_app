import 'dart:convert';
import 'package:studio_ghibli_app/const/ghibli_api.dart';
import 'package:studio_ghibli_app/repository/entities/movie_model.dart';
import 'package:http/http.dart' as http;

Future<List<Movie>> fetchMovies() async {
  List<Movie> movies = [];
  final res = await http.get(Uri.parse(ghibliApiRoute));
  if (res.statusCode == 200) {
    var jsonlist = jsonDecode(res.body) as List;
    jsonlist.forEach((e) {
      movies.add(Movie.fromJson(e));
    });
    return movies;
  } else {
    throw Exception('Failed to Load Movie');
  }
}