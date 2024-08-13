import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:todolist/models/serializers.dart';
import 'package:wc_dart_framework/wc_dart_framework.dart';

part 'project_data.g.dart';

final _logger = Logger('project_data.dart');

abstract class ProjectData implements Built<ProjectData, ProjectDataBuilder> {
  factory ProjectData([
    final void Function(ProjectDataBuilder) updates,
  ]) = _$ProjectData;

  ProjectData._();

  static Serializer<ProjectData> get serializer => _$projectDataSerializer;

  String? get id;
  int? get parentId;
  int? get order;
  String? get color;
  String? get name;
  int? get commentCount;
  bool? get isShared;
  bool? get isFavorite;
  bool? get isInboxProject;
  bool? get isTeamInbox;
  String? get url;
  String? get viewStyle;

  static ProjectData fromDynamic(final dynamic json) {
    return serializers.deserializeWith(
      ProjectData.serializer,
      json,
    )!;
  }

  static BuiltList<ProjectData> fromDynamics(final List<dynamic> list) {
    return BuiltList<ProjectData>(list.map(fromDynamic));
  }
}
