import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:studio_ghibli_app/amplifyconfiguration.dart';
import 'package:studio_ghibli_app/models/ModelProvider.dart';

Future<void> configureAmplify() async {
  final api = AmplifyAPI(modelProvider: ModelProvider.instance);
  await Amplify.addPlugin(api);

  try {
    await Amplify.configure(amplifyconfig);
  } on AmplifyAlreadyConfiguredException {
    print('AmplifyConfigureエラー');
  }
}

