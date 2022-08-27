import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studio_ghibli_app/providers/movies_notifier.dart';
import 'package:studio_ghibli_app/repository/entities/movie_model.dart';
import 'package:studio_ghibli_app/view/pages/detail_page.dart';
import 'package:studio_ghibli_app/view/widgets/not_found_image.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<MoviesNotifier>(
        builder: (context, movies, child) {
          final List <Movie> movieList = movies.getAll();
          return SafeArea(
            child: Scaffold(
                backgroundColor: Colors.black,
                body: ListView.builder(
                  itemExtent: 300,
                  itemCount: movieList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      highlightColor: Colors.blue,
                      child: Container(
                          color: Colors.black,
                          child: movieList[index].imageUrls != null && movieList[index].imageUrls!.isNotEmpty
                              ? Image.network(movieList[index].imageUrls!.first)
                              : NotFoundImage(
                              title: movieList[index].originalTitle)
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MovieDetailPage(movie: movieList[index])
                            )
                        );
                      },
                    );
                  },
                )
            ),
          );
        }
    );
  }
}