import 'package:flutter/material.dart';
import 'package:hiragana/app/app.dart';
import 'package:hiragana/foundation/dot_env_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DotEnvService.shared.initialize();
  runApp(const ProviderScope(child: MyApp()));
}
