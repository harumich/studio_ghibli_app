import 'package:flutter/material.dart';

class NotFoundImage extends StatelessWidget {
  const NotFoundImage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
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
                    '$titleの画像は\n見つかりませんでした。',
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
    );
  }
}
