import 'package:appflowy_board/appflowy_board.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:todolist/models/data/project_data.dart';
import 'package:todolist/models/data/project_data_by_id.dart';
import 'package:todolist/models/states/api_state.dart';
import 'package:wc_dart_framework/wc_dart_framework.dart';

part 'project_state.g.dart';

abstract class ProjectState
    implements Built<ProjectState, ProjectStateBuilder> {
  factory ProjectState([
    final void Function(ProjectStateBuilder) updates,
  ]) = _$ProjectState;

  ProjectState._();
  @BuiltValueHook(initializeBuilder: true)
  static void _initialize(final ProjectStateBuilder b) {
    b.boardController = AppFlowyBoardScrollController();
  }

  // @BlocUpdateField()
  // AppFlowyBoardController get controller;

  @BlocUpdateField()
  AppFlowyBoardScrollController get boardController;

  @BlocUpdateField()
  String? get title;

  @BlocUpdateField()
  String? get comment;

  @BlocUpdateField()
  int? get activeIndex;

  ApiState<void> get allProjectApi;

  ApiState<void> get addCommentApi;

  ApiState<void> get allCommentApi;

  ApiState<void> get projectDataApi;

  BuiltList<ProjectData> get allProjects;

  @BlocUpdateField()
  BuiltList? get comments;

  @BlocUpdateField()
  BuiltList<ProjectDataById>? get projectDataById;
}
