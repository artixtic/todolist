// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectState extends ProjectState {
  @override
  final AppFlowyBoardController controller;
  @override
  final AppFlowyBoardScrollController boardController;
  @override
  final ApiState<void> allProjectApi;
  @override
  final ApiState<void> projectDataApi;
  @override
  final BuiltList<ProjectData> allProjects;
  @override
  final BuiltList<ProjectDataById>? projectDataById;

  factory _$ProjectState([void Function(ProjectStateBuilder)? updates]) =>
      (new ProjectStateBuilder()..update(updates))._build();

  _$ProjectState._(
      {required this.controller,
      required this.boardController,
      required this.allProjectApi,
      required this.projectDataApi,
      required this.allProjects,
      this.projectDataById})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        controller, r'ProjectState', 'controller');
    BuiltValueNullFieldError.checkNotNull(
        boardController, r'ProjectState', 'boardController');
    BuiltValueNullFieldError.checkNotNull(
        allProjectApi, r'ProjectState', 'allProjectApi');
    BuiltValueNullFieldError.checkNotNull(
        projectDataApi, r'ProjectState', 'projectDataApi');
    BuiltValueNullFieldError.checkNotNull(
        allProjects, r'ProjectState', 'allProjects');
  }

  @override
  ProjectState rebuild(void Function(ProjectStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectStateBuilder toBuilder() => new ProjectStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectState &&
        controller == other.controller &&
        boardController == other.boardController &&
        allProjectApi == other.allProjectApi &&
        projectDataApi == other.projectDataApi &&
        allProjects == other.allProjects &&
        projectDataById == other.projectDataById;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, controller.hashCode);
    _$hash = $jc(_$hash, boardController.hashCode);
    _$hash = $jc(_$hash, allProjectApi.hashCode);
    _$hash = $jc(_$hash, projectDataApi.hashCode);
    _$hash = $jc(_$hash, allProjects.hashCode);
    _$hash = $jc(_$hash, projectDataById.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectState')
          ..add('controller', controller)
          ..add('boardController', boardController)
          ..add('allProjectApi', allProjectApi)
          ..add('projectDataApi', projectDataApi)
          ..add('allProjects', allProjects)
          ..add('projectDataById', projectDataById))
        .toString();
  }
}

class ProjectStateBuilder
    implements Builder<ProjectState, ProjectStateBuilder> {
  _$ProjectState? _$v;

  AppFlowyBoardController? _controller;
  AppFlowyBoardController? get controller => _$this._controller;
  set controller(AppFlowyBoardController? controller) =>
      _$this._controller = controller;

  AppFlowyBoardScrollController? _boardController;
  AppFlowyBoardScrollController? get boardController => _$this._boardController;
  set boardController(AppFlowyBoardScrollController? boardController) =>
      _$this._boardController = boardController;

  ApiStateBuilder<void>? _allProjectApi;
  ApiStateBuilder<void> get allProjectApi =>
      _$this._allProjectApi ??= new ApiStateBuilder<void>();
  set allProjectApi(ApiStateBuilder<void>? allProjectApi) =>
      _$this._allProjectApi = allProjectApi;

  ApiStateBuilder<void>? _projectDataApi;
  ApiStateBuilder<void> get projectDataApi =>
      _$this._projectDataApi ??= new ApiStateBuilder<void>();
  set projectDataApi(ApiStateBuilder<void>? projectDataApi) =>
      _$this._projectDataApi = projectDataApi;

  ListBuilder<ProjectData>? _allProjects;
  ListBuilder<ProjectData> get allProjects =>
      _$this._allProjects ??= new ListBuilder<ProjectData>();
  set allProjects(ListBuilder<ProjectData>? allProjects) =>
      _$this._allProjects = allProjects;

  ListBuilder<ProjectDataById>? _projectDataById;
  ListBuilder<ProjectDataById> get projectDataById =>
      _$this._projectDataById ??= new ListBuilder<ProjectDataById>();
  set projectDataById(ListBuilder<ProjectDataById>? projectDataById) =>
      _$this._projectDataById = projectDataById;

  ProjectStateBuilder() {
    ProjectState._initialize(this);
  }

  ProjectStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _controller = $v.controller;
      _boardController = $v.boardController;
      _allProjectApi = $v.allProjectApi.toBuilder();
      _projectDataApi = $v.projectDataApi.toBuilder();
      _allProjects = $v.allProjects.toBuilder();
      _projectDataById = $v.projectDataById?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectState;
  }

  @override
  void update(void Function(ProjectStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectState build() => _build();

  _$ProjectState _build() {
    _$ProjectState _$result;
    try {
      _$result = _$v ??
          new _$ProjectState._(
              controller: BuiltValueNullFieldError.checkNotNull(
                  controller, r'ProjectState', 'controller'),
              boardController: BuiltValueNullFieldError.checkNotNull(
                  boardController, r'ProjectState', 'boardController'),
              allProjectApi: allProjectApi.build(),
              projectDataApi: projectDataApi.build(),
              allProjects: allProjects.build(),
              projectDataById: _projectDataById?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allProjectApi';
        allProjectApi.build();
        _$failedField = 'projectDataApi';
        projectDataApi.build();
        _$failedField = 'allProjects';
        allProjects.build();
        _$failedField = 'projectDataById';
        _projectDataById?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProjectState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
