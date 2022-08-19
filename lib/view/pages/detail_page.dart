import 'package:flutter/material.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
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
              ),
              const Spacer(),
              Text('天空の城 ラピュタ',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30)),
              const SizedBox(height: 30),
              Image.network(
                "https://www.ghibli.jp/gallery/laputa047.jpg",
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Container(
                  child: const Text('2000年/宮崎駿'),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Text(
                  'ナスカ大佐ナスカ大佐ナスカ大佐ナスカ大佐ナスカ大佐ナスカ大佐ナスカ大佐ナスカ大佐ナスカ大佐ナスカ大佐ナスカ大佐ナスカ大佐ナスカ大佐ナスカ大佐ナスカ大佐ナスカ大佐ナスカ大佐ナスカ大佐ナスカ大佐ナスカ大佐',
                  style: TextStyle(color: Colors.white)
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

