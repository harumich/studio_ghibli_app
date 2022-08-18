import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'Hello World!',
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  'ごきげんよう！',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          )
      ),
    );
  }
}
