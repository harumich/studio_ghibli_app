import 'package:flutter/material.dart';
import 'package:studio_ghibli_app/repository/entities/movie_model.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  List<Movie> movies = [
    Movie(
      id: 1,
      originalTitle: 'となりのトトロ',
      imageUrls: ['https://www.ghibli.jp/gallery/totoro029.jpg','https://www.ghibli.jp/gallery/totoro050.jpg','https://www.ghibli.jp/gallery/totoro019.jpg'],
      description: 'テストテストテストテストテストテストテストテストテストテストテストテストテストテスト',
      releaseDate: '1997',
      director: '宮崎駿',
    ),
    Movie(
      id: 1,
      originalTitle: '千と千尋の神隠し',
      imageUrls: ['https://www.ghibli.jp/gallery/chihiro048.jpg','https://www.ghibli.jp/gallery/chihiro049.jpg','https://www.ghibli.jp/gallery/chihiro004.jpg'],
      description: 'テストテストテストテストテストテストテストテストテストテストテストテストテストテスト',
      releaseDate: '1997',
      director: '宮崎駿',
    ),
    Movie(
      id: 1,
      originalTitle: '天空の城 ラピュタ',
      imageUrls: ['https://www.ghibli.jp/gallery/laputa030.jpg','https://www.ghibli.jp/gallery/laputa047.jpg','https://www.ghibli.jp/gallery/laputa003.jpg'],
      description: 'テストテストテストテストテストテストテストテストテストテストテストテストテストテスト',
      releaseDate: '1997',
      director: '宮崎駿',
    ),
    Movie(
      id: 1,
      originalTitle: 'ハウルの動く城',
      description: 'テストテストテストテストテストテストテストテストテストテストテストテストテストテスト',
      releaseDate: '1997',
      director: '宮崎駿',
    ),
    Movie(
      id: 1,
      originalTitle: 'もののけ姫',
      imageUrls: ['https://www.ghibli.jp/gallery/mononoke049.jpg','https://www.ghibli.jp/gallery/mononoke046.jpg','https://www.ghibli.jp/gallery/mononoke026.jpg'],
      description: 'テストテストテストテストテストテストテストテストテストテストテストテストテストテスト',
      releaseDate: '1997',
      director: '宮崎駿',
    ),
    Movie(
      id: 1,
      originalTitle: '猫の恩返し',
      imageUrls: ['https://www.ghibli.jp/gallery/baron047.jpg','https://www.ghibli.jp/gallery/baron002.jpg','https://www.ghibli.jp/gallery/baron035.jpg'],
      description: 'テストテストテストテストテストテストテストテストテストテストテストテストテストテスト',
      releaseDate: '1997',
      director: '宮崎駿',
    ),
    Movie(
      id: 1,
      originalTitle: 'ゲド戦記',
      description: 'テストテストテストテストテストテストテストテストテストテストテストテストテストテスト',
      releaseDate: '1997',
      director: '宮崎駿',
    ),
    Movie(
      id: 1,
      originalTitle: '崖の上のポニョ',
      imageUrls: ['https://www.ghibli.jp/gallery/ponyo036.jpg','https://www.ghibli.jp/gallery/ponyo044.jpg','https://www.ghibli.jp/gallery/ponyo028.jpg'],
      description: 'テストテストテストテストテストテストテストテストテストテストテストテストテストテスト',
      releaseDate: '1997',
      director: '宮崎駿',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: movies.length,
              itemBuilder: (BuildContext context, int index) {
                return MovieCard(movie: movies[index]);
              }
          )
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  const MovieCard({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        movie.imageUrls?.first ?? 'https://t.pimg.jp/047/597/497/5/47597497.jpg',
        height: 50,
        width: 50,
      ),
      title: Text(movie.originalTitle),
      onTap: () => {

      },
    );
  }
}
