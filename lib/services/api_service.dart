import 'package:wc_dart_framework/wc_dart_framework.dart';

import '../models/data/user_data.dart';
import '../utils/dio.dart';

final _logger = Logger('api_service.dart');

class _ApiService {
  Future<UserData> login({
    required final String email,
    required final String password,
  }) async {
    final response = await dio.post(
      'login',
      data: {
        'email': email,
        'password': password,
      },
    );
    return UserData.fromDynamic(response.data["data"]);
  }
}

final apiService = _ApiService();
