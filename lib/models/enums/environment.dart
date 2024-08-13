import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:wc_dart_framework/wc_dart_framework.dart';

part 'environment.enum.g.dart';

part 'environment.g.dart';

@EnumGen()
class Environment extends EnumClass {
  static Serializer<Environment> get serializer => _$environmentSerializer;

  static BuiltSet<Environment> get values => _$values;

  static Environment valueOf(final String name) => _$valueOf(name);

  static const Environment qa = _$qa;
  static const Environment production = _$production;

  const Environment._(final String name) : super(name);
}
