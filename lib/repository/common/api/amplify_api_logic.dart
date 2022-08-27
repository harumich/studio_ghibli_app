import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:studio_ghibli_app/amplifyconfiguration.dart';
import 'package:studio_ghibli_app/models/ModelProvider.dart';
import 'package:studio_ghibli_app/repository/entities/movie_model.dart';

Future<void> configureAmplify() async {
  final api = AmplifyAPI(modelProvider: ModelProvider.instance);
  await Amplify.addPlugin(api);

  try {
    await Amplify.configure(amplifyconfig);
  } on AmplifyAlreadyConfiguredException {
    print('AmplifyConfigureエラー');
  }
}

Future<List<String>?> queryMovieImages(Movie movie) async {
  try {
    String title = movie.originalTitle;
    final request = ModelQueries.list<MovieImages>(MovieImages.classType, where: MovieImages.TITLE.eq(title));
    final response = await Amplify.API.query(request: request).response;
    final listMovieImages = response.data?.items;
    if (listMovieImages != null && listMovieImages.isNotEmpty){
      return listMovieImages.first!.images;
    } else {
      print('$titleと合致するMovieImagesデータはありませんでした');
      return null;
    }
  } on ApiException catch (e) {
    print('Query failed: $e');
    return null;
  }
}

