import 'package:dio/dio.dart';
import 'package:wc_dart_framework/wc_dart_framework.dart';

import '../bloc/singleton_bloc.dart';
import '../core/config.dart';
import '../models/data/api_meta_data.dart';

export 'package:dio/dio.dart';

final _logger = Logger('dio.dart');

Dio _createDioInstance() {
  final headers = <String, dynamic>{};
  final options = BaseOptions(
    baseUrl: '${config.apiUrl}',
    headers: headers,
    connectTimeout: const Duration(milliseconds: 60000),
    receiveTimeout: const Duration(milliseconds: 60000),
  );
  final dio = Dio(options);
  dio.interceptors.add(
    _CustomInterceptor(),
  );
  return dio;
}

class _CustomInterceptor extends Interceptor {
  final ignoreAuthForPaths = <String>[];
  final ignore401ForPaths = <String>[
    'login',
    'changepassword',
  ];

  _CustomInterceptor();

  @override
  Future<void> onRequest(
    final RequestOptions options,
    final RequestInterceptorHandler handler,
  ) async {
    String? authorization;
    if (!ignoreAuthForPaths.contains(options.path)) {
      authorization = singletonBloc.profileBloc.state?.accessToken;
      if (authorization != null) {
        options.headers['Authorization'] = "Bearer $authorization";
      }
      options.headers['Content-Type'] = "application/json";
      options.headers['Accept'] = "application/json";
      _logger.fine(
        'PATH: ${options.method} ${options.path} ${options.queryParameters}',
      );
      super.onRequest(options, handler);
    }
  }

  @override
  Future<void> onError(
    final DioError err,
    final ErrorInterceptorHandler handler,
  ) async {
    _logger.severe(
      'PATH: ${err.requestOptions.method} ${err.requestOptions.path} || ERROR: ${err.message}',
    );
    if (err.response?.statusCode == 401) {
      if (!ignore401ForPaths.contains(err.requestOptions.path)) {
        singletonBloc.profileBloc.updateProfile(null);
      }
    }
    super.onError(err, handler);
  }

  @override
  void onResponse(
    final Response response,
    final ResponseInterceptorHandler handler,
  ) {
    try {
      final meta = ApiMetaData.fromDynamic(response.data);
      if (meta.code != 200) {
        _logger.severe(
          'PATH: ${response.requestOptions.method} ${response.requestOptions.path} || ERROR: ${response.data}',
        );
        handler.reject(
          DioError(
            requestOptions: response.requestOptions,
            message: meta.msg,
            response: response,
            type: DioErrorType.badResponse,
            error: meta,
          ),
        );
      }
    } catch (e) {
      _logger.severe('onResponse: $e');
    }
    if (!handler.isCompleted) {
      super.onResponse(response, handler);
    }
  }
}

final Dio dio = _createDioInstance();

void cancelDioToken(final CancelToken? token) {
  if (token == null) {
    return;
  }
  if (token.isCancelled) {
    return;
  }
  try {
    token.cancel();
  } catch (e) {
    _logger.severe('cancelDioToken: $e');
  }
}

class CustomDioError implements Exception {
  final int status;
  final String message;

  CustomDioError({
    required this.status,
    required this.message,
  });
}
