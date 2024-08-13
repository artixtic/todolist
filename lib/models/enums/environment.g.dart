// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'environment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Environment _$qa = const Environment._('qa');
const Environment _$production = const Environment._('production');

Environment _$valueOf(String name) {
  switch (name) {
    case 'qa':
      return _$qa;
    case 'production':
      return _$production;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Environment> _$values =
    new BuiltSet<Environment>(const <Environment>[
  _$qa,
  _$production,
]);

Serializer<Environment> _$environmentSerializer = new _$EnvironmentSerializer();

class _$EnvironmentSerializer implements PrimitiveSerializer<Environment> {
  @override
  final Iterable<Type> types = const <Type>[Environment];
  @override
  final String wireName = 'Environment';

  @override
  Object serialize(Serializers serializers, Environment object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  Environment deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Environment.valueOf(serialized as String);
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
