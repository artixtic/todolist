import 'package:appflowy_board/appflowy_board.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:todolist/models/data/project_data.dart';
import 'package:todolist/models/data/project_data_by_id.dart';
import 'package:todolist/models/states/api_state.dart';
import 'package:todolist/pages/main/project/project_view.dart';
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
    b.controller = AppFlowyBoardController(
      onMoveGroup: (fromGroupId, fromIndex, toGroupId, toIndex) {},
      onMoveGroupItem: (groupId, fromIndex, toIndex) {},
      onMoveGroupItemToGroup: (fromGroupId, fromIndex, toGroupId, toIndex) {},
    );
    b.boardController = AppFlowyBoardScrollController();
    final group1 = AppFlowyGroupData(id: "To Do", name: "To Do", items: [
      TextItem("Card 1"),
      TextItem("Card 2"),
      RichTextItem(title: "Card 3", subtitle: 'Aug 1, 2020 4:05 PM'),
      TextItem("Card 4"),
      TextItem("Card 5"),
    ]);

    final group2 = AppFlowyGroupData(
      id: "In Progress",
      name: "In Progress",
      items: <AppFlowyGroupItem>[
        TextItem("Card 6"),
        RichTextItem(title: "Card 7", subtitle: 'Aug 1, 2020 4:05 PM'),
        RichTextItem(title: "Card 8", subtitle: 'Aug 1, 2020 4:05 PM'),
      ],
    );

    final group3 = AppFlowyGroupData(
        id: "Pending",
        name: "Pending",
        items: <AppFlowyGroupItem>[
          TextItem("Card 9"),
          RichTextItem(title: "Card 10", subtitle: 'Aug 1, 2020 4:05 PM'),
          TextItem("Card 11"),
          TextItem("Card 12"),
        ]);
    final group4 = AppFlowyGroupData(
        id: "Canceled",
        name: "Canceled",
        items: <AppFlowyGroupItem>[
          TextItem("Card 13"),
          TextItem("Card 14"),
          TextItem("Card 15"),
        ]);
    final group5 = AppFlowyGroupData(
        id: "Urgent",
        name: "Urgent",
        items: <AppFlowyGroupItem>[
          TextItem("Card 14"),
          TextItem("Card 15"),
        ]);

    b.controller!.addGroup(group1);
    b.controller!.addGroup(group2);
    b.controller!.addGroup(group3);
    b.controller!.addGroup(group4);
    b.controller!.addGroup(group5);
  }

  @BlocUpdateField()
  AppFlowyBoardController get controller;

  @BlocUpdateField()
  AppFlowyBoardScrollController get boardController;

  ApiState<void> get allProjectApi;

  ApiState<void> get projectDataApi;

  BuiltList<ProjectData> get allProjects;

  @BlocUpdateField()
  BuiltList<ProjectDataById>? get projectDataById;
}
