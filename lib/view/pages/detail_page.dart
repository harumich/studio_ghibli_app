import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studio_ghibli_app/providers/movies_notifier.dart';
import 'package:studio_ghibli_app/repository/common/Hive/hive_logic.dart';
import 'package:studio_ghibli_app/view/widgets/movie_carousel_slider.dart';
import 'package:studio_ghibli_app/view/widgets/not_found_image.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Consumer<MoviesNotifier>(
      builder: (context, movies, child)
    {
      final movie = movies.movies[index];
      String releaseDate = movie.releaseDate;
      String director = movie.director;
      return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white,),
                    onPressed: () => Navigator.pop(context),
                  ),
                  trailing: IconButton(
                    icon: movie.isWatched
                        ? const Icon(Icons.visibility, color: Colors.blue)
                        : const Icon(Icons.visibility, color: Colors.grey),
                    onPressed: () => {
                      saveHive(movie.originalTitle, movie.isWatched),
                      movies.fetchIsWatched(index)
                    },
                  ),
                ),
                const Spacer(),
                Text(
                    movie.originalTitle,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                    )
                ),
                const SizedBox(height: 30),
                movie.imageUrls!.isNotEmpty
                    ? MovieCarouselSlider(images: movie.imageUrls!)
                    : NotFoundImage(title: movie.originalTitle),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text('$releaseDate/$director'),
                  ),
                ),
                Text(
                    movie.description,
                    style: const TextStyle(color: Colors.white)
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      );
    });
  }
}

