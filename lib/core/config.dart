import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../models/enums/environment.dart';

class _Config {
  String get appName => dotenv.env['APP_NAME']!;

  String get apiUrl => dotenv.env['API_URL']!;

  final environment = Environment.valueOf(
    const String.fromEnvironment(
      'DART_ENV',
      defaultValue: 'qa',
    ),
  );

  final defaultLanguageCode = 'en';
}

final config = _Config();
