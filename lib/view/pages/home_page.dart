import 'package:cached_network_image/cached_network_image.dart';
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
                          child: Stack(
                            children: [
                              movieList[index].imageUrls != null && movieList[index].imageUrls!.isNotEmpty
                                  ? CachedNetworkImage(imageUrl:movieList[index].imageUrls!.first)
                                  : NotFoundImage(
                                  title: movieList[index].originalTitle),
                              if (movieList[index].isWatched) const Padding(
                                padding: EdgeInsets.only(top: 35, left: 330),
                                child: Icon(Icons.visibility, color: Colors.blue, size: 60),
                              )
                            ],
                          )
                      ),
                      onTap: () async {
                        await Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MovieDetailPage(index: index)
                            )
                        );
                        movies.fetchIsWatched(index);
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