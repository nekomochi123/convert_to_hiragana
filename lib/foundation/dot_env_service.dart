import 'package:flutter_dotenv/flutter_dotenv.dart';

class DotEnvService {
  const DotEnvService._();

  static DotEnvService get shared => _shared;
  static const _shared = DotEnvService._();

  Future<void> initialize() async {
    if (!dotenv.isInitialized) {
      await dotenv.load(fileName: 'lib/env/.env_dev');
    }
  }

  String get hiraganaApiKey => dotenv.env['HIRAGANA_API_KEY']!;
}
