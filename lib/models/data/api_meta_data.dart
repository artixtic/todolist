import 'dart:io';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:wc_dart_framework/wc_dart_framework.dart';

import '../../utils/dio.dart';
import '../serializers.dart';

part 'api_meta_data.g.dart';

final _logger = Logger('api_meta_data.dart');

abstract class ApiMetaData implements Built<ApiMetaData, ApiMetaDataBuilder> {
  factory ApiMetaData([
    final void Function(ApiMetaDataBuilder) updates,
  ]) = _$ApiMetaData;

  ApiMetaData._();

  static Serializer<ApiMetaData> get serializer => _$apiMetaDataSerializer;

  int get code;
  String get msg;

  static ApiMetaData fromDynamic(final dynamic json) {
    if (json["msg"] == null) {
      json["msg"] = json["message"];
    }
    return serializers.deserializeWith(
      ApiMetaData.serializer,
      json,
    )!;
  }

  static ApiMetaData fromMessage(final String message) {
    return ApiMetaData(
      (final b) => b
        ..code = -1
        ..msg = message,
    );
  }

  static ApiMetaData fromException(final dynamic e) {
    _logger.severe(e);
    if (e is CustomDioError) {
      return ApiMetaData(
        (final b) => b
          ..code = e.status
          ..msg = '',
      );
    } else if (e is DioError) {
      if (e.type == DioErrorType.unknown && e.error is! SocketException) {
        // do nothing
      } else if (e.response == null) {
        return ApiMetaData(
          (final b) => b
            ..code = -2
            ..msg = 'Internet connection failed',
        );
      } else {
        try {
          return fromDynamic(e.response!.data);
        } catch (e2) {
          return ApiMetaData(
            (final b) => b
              ..code = e.response!.statusCode ?? -1
              ..msg =
                  'Error Code: ${e.response!.statusCode ?? -1} \nMessage: ${e.response!.data["message"]}',
          );
        }
      }
    }
    return fromMessage(e.toString());
  }
}
