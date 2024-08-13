import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:todolist/models/serializers.dart';
import 'package:wc_dart_framework/wc_dart_framework.dart';

part 'project_data_by_id.g.dart';

final _logger = Logger('project_data_by_id.dart');

abstract class ProjectDataById
    implements Built<ProjectDataById, ProjectDataByIdBuilder> {
  factory ProjectDataById([
    final void Function(ProjectDataByIdBuilder) updates,
  ]) = _$ProjectDataById;

  ProjectDataById._();

  static Serializer<ProjectDataById> get serializer =>
      _$projectDataByIdSerializer;

  String? get id;
  String? get projectId;
  int? get order;
  String? get name;
  BuiltList? get sectionData;

  static ProjectDataById fromDynamic(final dynamic json) {
    return serializers.deserializeWith(
      ProjectDataById.serializer,
      json,
    )!;
  }

  static BuiltList<ProjectDataById> fromDynamics(final List<dynamic> list) {
    return BuiltList<ProjectDataById>(list.map(fromDynamic));
  }
}
