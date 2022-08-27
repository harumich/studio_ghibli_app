import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studio_ghibli_app/amplifyconfiguration.dart';
import 'package:studio_ghibli_app/providers/movies_notifier.dart';
import 'package:studio_ghibli_app/view/pages/home_page.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Amplify.configure(amplifyconfig);
  final moviesNotifier = MoviesNotifier();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<MoviesNotifier>(
          create: (context) => moviesNotifier,
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}