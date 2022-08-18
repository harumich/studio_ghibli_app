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
          backgroundColor: Colors.black,
          body:  ListView(
            itemExtent: 300,
            children: _getItems(),
          )
      ),
    );
  }

  List<Widget> _getItems() {
    final List<Widget> movieWidgets = [];
    for (Movie movie in movies) {
      String movieTitle = movie.originalTitle;
      movieWidgets.add(
        InkWell(
          highlightColor: Colors.blue,
          child: Container(
            color: Colors.black,
            child: movie.imageUrls != null
              ? Image.network(movie.imageUrls!.first)
              : Padding(
                padding: const EdgeInsets.only(top: 45,bottom: 45),
                child: Container(
                    height: 50,
                    color: Colors.white70,
                    child: Center(
                      child: Text(
                        '$movieTitleの画像は\n見つかりませんでした。',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    )
                ),
              )
          ),
          onTap: (){
            print(movie.originalTitle);
          },
        ),
      );
    }
    return movieWidgets;
  }
}


