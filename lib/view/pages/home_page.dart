import 'package:flutter/material.dart';
import 'package:studio_ghibli_app/repository/entities/movie_model.dart';
import 'package:studio_ghibli_app/view/pages/detail_page.dart';

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
          backgroundColor: Colors.black,
          body:  ListView.builder(
            itemExtent: 300,
            itemCount: movies.length,
            itemBuilder: (BuildContext context, int index){
              return _getItems(context, index);
            },
          )
      ),
    );
  }

  InkWell _getItems(BuildContext context, int index) {
    Movie movie = movies[index];
    String movieTitle = movie.originalTitle;
      return InkWell(
        highlightColor: Colors.blue,
        child: Container(
          color: Colors.black,
          child: movie.imageUrls != null
            ? Image.network(movie.imageUrls!.first)
            : Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                      children: [
                        Image.network(
                          'https://www.ghibli.jp/images/park1.jpg',
                            color: const Color.fromRGBO(255, 255, 255, 0.7),
                            colorBlendMode: BlendMode.modulate
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 75, left: 20),
                          child: Center(
                            child: Text(
                              '$movieTitleの画像は\n見つかりませんでした。',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white70
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            )
            ),
        onTap: (){
          Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (BuildContext context) => MovieDetailPage(index: index)
              )
          );
        },
      );
  }
}


