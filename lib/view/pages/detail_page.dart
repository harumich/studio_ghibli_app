import 'package:flutter/material.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Image.network(
              "https://www.ghibli.jp/gallery/laputa047.jpg",
            ),
          ],
        ),
      ),
    );
  }
}

