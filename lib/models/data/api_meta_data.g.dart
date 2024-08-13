// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_meta_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApiMetaData> _$apiMetaDataSerializer = new _$ApiMetaDataSerializer();

class _$ApiMetaDataSerializer implements StructuredSerializer<ApiMetaData> {
  @override
  final Iterable<Type> types = const [ApiMetaData, _$ApiMetaData];
  @override
  final String wireName = 'ApiMetaData';

  @override
  Iterable<Object?> serialize(Serializers serializers, ApiMetaData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(int)),
      'msg',
      serializers.serialize(object.msg, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ApiMetaData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApiMetaDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'msg':
          result.msg = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ApiMetaData extends ApiMetaData {
  @override
  final int code;
  @override
  final String msg;

  factory _$ApiMetaData([void Function(ApiMetaDataBuilder)? updates]) =>
      (new ApiMetaDataBuilder()..update(updates))._build();

  _$ApiMetaData._({required this.code, required this.msg}) : super._() {
    BuiltValueNullFieldError.checkNotNull(code, r'ApiMetaData', 'code');
    BuiltValueNullFieldError.checkNotNull(msg, r'ApiMetaData', 'msg');
  }

  @override
  ApiMetaData rebuild(void Function(ApiMetaDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiMetaDataBuilder toBuilder() => new ApiMetaDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiMetaData && code == other.code && msg == other.msg;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiMetaData')
          ..add('code', code)
          ..add('msg', msg))
        .toString();
  }
}

class ApiMetaDataBuilder implements Builder<ApiMetaData, ApiMetaDataBuilder> {
  _$ApiMetaData? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  ApiMetaDataBuilder();

  ApiMetaDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _msg = $v.msg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiMetaData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiMetaData;
  }

  @override
  void update(void Function(ApiMetaDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiMetaData build() => _build();

  _$ApiMetaData _build() {
    final _$result = _$v ??
        new _$ApiMetaData._(
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'ApiMetaData', 'code'),
            msg: BuiltValueNullFieldError.checkNotNull(
                msg, r'ApiMetaData', 'msg'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
