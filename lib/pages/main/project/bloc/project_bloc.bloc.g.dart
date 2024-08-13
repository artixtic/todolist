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

  static ProjectBlocSelector<AppFlowyBoardController> controller({
    final Key? key,
    required Widget Function(AppFlowyBoardController controller) builder,
    final ProjectBloc? bloc,
  }) {
    return ProjectBlocSelector(
      key: key,
      selector: (state) => state.controller,
      builder: (value) => builder(value),
      bloc: bloc,
    );
  }

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
  void updateController(final AppFlowyBoardController controller) {
    if (state.controller == controller) {
      return;
    }

    emit(state.rebuild((final b) => b.controller = controller));

    $onUpdateController();
  }

  @protected
  void $onUpdateController() {}

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
