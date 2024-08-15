// ignore_for_file: type=lint, unused_element

part of 'project_bloc.dart';

// **************************************************************************
// BlocGenerator
// **************************************************************************

class ProjectBlocBuilder extends StatelessWidget {
  final BlocWidgetBuilder<ProjectState> builder;

  const ProjectBlocBuilder({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<ProjectBloc, ProjectState>(
      builder: builder,
    );
  }
}

class ProjectBlocSelector<T> extends StatelessWidget {
  final BlocWidgetSelector<ProjectState, T> selector;
  final Widget Function(T state) builder;
  final ProjectBloc? bloc;

  const ProjectBlocSelector({
    final Key? key,
    required this.selector,
    required this.builder,
    this.bloc,
  }) : super(key: key);

  static ProjectBlocSelector<AppFlowyBoardScrollController> boardController({
    final Key? key,
    required Widget Function(AppFlowyBoardScrollController boardController)
        builder,
    final ProjectBloc? bloc,
  }) {
    return ProjectBlocSelector(
      key: key,
      selector: (state) => state.boardController,
      builder: (value) => builder(value),
      bloc: bloc,
    );
  }

  static ProjectBlocSelector<String?> title({
    final Key? key,
    required Widget Function(String? title) builder,
    final ProjectBloc? bloc,
  }) {
    return ProjectBlocSelector(
      key: key,
      selector: (state) => state.title,
      builder: (value) => builder(value),
      bloc: bloc,
    );
  }

  static ProjectBlocSelector<String?> comment({
    final Key? key,
    required Widget Function(String? comment) builder,
    final ProjectBloc? bloc,
  }) {
    return ProjectBlocSelector(
      key: key,
      selector: (state) => state.comment,
      builder: (value) => builder(value),
      bloc: bloc,
    );
  }

  static ProjectBlocSelector<int?> activeIndex({
    final Key? key,
    required Widget Function(int? activeIndex) builder,
    final ProjectBloc? bloc,
  }) {
    return ProjectBlocSelector(
      key: key,
      selector: (state) => state.activeIndex,
      builder: (value) => builder(value),
      bloc: bloc,
    );
  }

  static ProjectBlocSelector<ApiState<void>> allProjectApi({
    final Key? key,
    required Widget Function(ApiState<void> allProjectApi) builder,
    final ProjectBloc? bloc,
  }) {
    return ProjectBlocSelector(
      key: key,
      selector: (state) => state.allProjectApi,
      builder: (value) => builder(value),
      bloc: bloc,
    );
  }

  static ProjectBlocSelector<ApiState<void>> addCommentApi({
    final Key? key,
    required Widget Function(ApiState<void> addCommentApi) builder,
    final ProjectBloc? bloc,
  }) {
    return ProjectBlocSelector(
      key: key,
      selector: (state) => state.addCommentApi,
      builder: (value) => builder(value),
      bloc: bloc,
    );
  }

  static ProjectBlocSelector<ApiState<void>> allCommentApi({
    final Key? key,
    required Widget Function(ApiState<void> allCommentApi) builder,
    final ProjectBloc? bloc,
  }) {
    return ProjectBlocSelector(
      key: key,
      selector: (state) => state.allCommentApi,
      builder: (value) => builder(value),
      bloc: bloc,
    );
  }

  static ProjectBlocSelector<ApiState<void>> projectDataApi({
    final Key? key,
    required Widget Function(ApiState<void> projectDataApi) builder,
    final ProjectBloc? bloc,
  }) {
    return ProjectBlocSelector(
      key: key,
      selector: (state) => state.projectDataApi,
      builder: (value) => builder(value),
      bloc: bloc,
    );
  }

  static ProjectBlocSelector<BuiltList<ProjectData>> allProjects({
    final Key? key,
    required Widget Function(BuiltList<ProjectData> allProjects) builder,
    final ProjectBloc? bloc,
  }) {
    return ProjectBlocSelector(
      key: key,
      selector: (state) => state.allProjects,
      builder: (value) => builder(value),
      bloc: bloc,
    );
  }

  static ProjectBlocSelector<BuiltList<dynamic>?> comments({
    final Key? key,
    required Widget Function(BuiltList<dynamic>? comments) builder,
    final ProjectBloc? bloc,
  }) {
    return ProjectBlocSelector(
      key: key,
      selector: (state) => state.comments,
      builder: (value) => builder(value),
      bloc: bloc,
    );
  }

  static ProjectBlocSelector<BuiltList<ProjectDataById>?> projectDataById({
    final Key? key,
    required Widget Function(BuiltList<ProjectDataById>? projectDataById)
        builder,
    final ProjectBloc? bloc,
  }) {
    return ProjectBlocSelector(
      key: key,
      selector: (state) => state.projectDataById,
      builder: (value) => builder(value),
      bloc: bloc,
    );
  }

  @override
  Widget build(final BuildContext context) {
    return BlocSelector<ProjectBloc, ProjectState, T>(
      selector: selector,
      builder: (_, value) => builder(value),
      bloc: bloc,
    );
  }
}

mixin _ProjectBlocMixin on Cubit<ProjectState> {
  @mustCallSuper
  void updateBoardController(
      final AppFlowyBoardScrollController boardController) {
    if (state.boardController == boardController) {
      return;
    }

    emit(state.rebuild((final b) => b.boardController = boardController));

    $onUpdateBoardController();
  }

  @protected
  void $onUpdateBoardController() {}

  @mustCallSuper
  void updateTitle(final String? title) {
    if (state.title == title) {
      return;
    }

    emit(state.rebuild((final b) => b.title = title));

    $onUpdateTitle();
  }

  @protected
  void $onUpdateTitle() {}

  @mustCallSuper
  void updateComment(final String? comment) {
    if (state.comment == comment) {
      return;
    }

    emit(state.rebuild((final b) => b.comment = comment));

    $onUpdateComment();
  }

  @protected
  void $onUpdateComment() {}

  @mustCallSuper
  void updateActiveIndex(final int? activeIndex) {
    if (state.activeIndex == activeIndex) {
      return;
    }

    emit(state.rebuild((final b) => b.activeIndex = activeIndex));

    $onUpdateActiveIndex();
  }

  @protected
  void $onUpdateActiveIndex() {}

  @mustCallSuper
  void updateComments(final BuiltList<dynamic>? comments) {
    if (state.comments == comments) {
      return;
    }

    emit(state.rebuild((final b) {
      if (comments == null)
        b.comments = null;
      else
        b.comments.replace(comments);
    }));

    $onUpdateComments();
  }

  @protected
  void $onUpdateComments() {}

  @mustCallSuper
  void updateProjectDataById(
      final BuiltList<ProjectDataById>? projectDataById) {
    if (state.projectDataById == projectDataById) {
      return;
    }

    emit(state.rebuild((final b) {
      if (projectDataById == null)
        b.projectDataById = null;
      else
        b.projectDataById.replace(projectDataById);
    }));

    $onUpdateProjectDataById();
  }

  @protected
  void $onUpdateProjectDataById() {}
}
