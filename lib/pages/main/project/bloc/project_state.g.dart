// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectState extends ProjectState {
  @override
  final AppFlowyBoardScrollController boardController;
  @override
  final String? title;
  @override
  final String? comment;
  @override
  final int? activeIndex;
  @override
  final ApiState<void> allProjectApi;
  @override
  final ApiState<void> addCommentApi;
  @override
  final ApiState<void> allCommentApi;
  @override
  final ApiState<void> projectDataApi;
  @override
  final BuiltList<ProjectData> allProjects;
  @override
  final BuiltList<dynamic>? comments;
  @override
  final BuiltList<ProjectDataById>? projectDataById;

  factory _$ProjectState([void Function(ProjectStateBuilder)? updates]) =>
      (new ProjectStateBuilder()..update(updates))._build();

  _$ProjectState._(
      {required this.boardController,
      this.title,
      this.comment,
      this.activeIndex,
      required this.allProjectApi,
      required this.addCommentApi,
      required this.allCommentApi,
      required this.projectDataApi,
      required this.allProjects,
      this.comments,
      this.projectDataById})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        boardController, r'ProjectState', 'boardController');
    BuiltValueNullFieldError.checkNotNull(
        allProjectApi, r'ProjectState', 'allProjectApi');
    BuiltValueNullFieldError.checkNotNull(
        addCommentApi, r'ProjectState', 'addCommentApi');
    BuiltValueNullFieldError.checkNotNull(
        allCommentApi, r'ProjectState', 'allCommentApi');
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
        boardController == other.boardController &&
        title == other.title &&
        comment == other.comment &&
        activeIndex == other.activeIndex &&
        allProjectApi == other.allProjectApi &&
        addCommentApi == other.addCommentApi &&
        allCommentApi == other.allCommentApi &&
        projectDataApi == other.projectDataApi &&
        allProjects == other.allProjects &&
        comments == other.comments &&
        projectDataById == other.projectDataById;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, boardController.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, activeIndex.hashCode);
    _$hash = $jc(_$hash, allProjectApi.hashCode);
    _$hash = $jc(_$hash, addCommentApi.hashCode);
    _$hash = $jc(_$hash, allCommentApi.hashCode);
    _$hash = $jc(_$hash, projectDataApi.hashCode);
    _$hash = $jc(_$hash, allProjects.hashCode);
    _$hash = $jc(_$hash, comments.hashCode);
    _$hash = $jc(_$hash, projectDataById.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectState')
          ..add('boardController', boardController)
          ..add('title', title)
          ..add('comment', comment)
          ..add('activeIndex', activeIndex)
          ..add('allProjectApi', allProjectApi)
          ..add('addCommentApi', addCommentApi)
          ..add('allCommentApi', allCommentApi)
          ..add('projectDataApi', projectDataApi)
          ..add('allProjects', allProjects)
          ..add('comments', comments)
          ..add('projectDataById', projectDataById))
        .toString();
  }
}

class ProjectStateBuilder
    implements Builder<ProjectState, ProjectStateBuilder> {
  _$ProjectState? _$v;

  AppFlowyBoardScrollController? _boardController;
  AppFlowyBoardScrollController? get boardController => _$this._boardController;
  set boardController(AppFlowyBoardScrollController? boardController) =>
      _$this._boardController = boardController;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  int? _activeIndex;
  int? get activeIndex => _$this._activeIndex;
  set activeIndex(int? activeIndex) => _$this._activeIndex = activeIndex;

  ApiStateBuilder<void>? _allProjectApi;
  ApiStateBuilder<void> get allProjectApi =>
      _$this._allProjectApi ??= new ApiStateBuilder<void>();
  set allProjectApi(ApiStateBuilder<void>? allProjectApi) =>
      _$this._allProjectApi = allProjectApi;

  ApiStateBuilder<void>? _addCommentApi;
  ApiStateBuilder<void> get addCommentApi =>
      _$this._addCommentApi ??= new ApiStateBuilder<void>();
  set addCommentApi(ApiStateBuilder<void>? addCommentApi) =>
      _$this._addCommentApi = addCommentApi;

  ApiStateBuilder<void>? _allCommentApi;
  ApiStateBuilder<void> get allCommentApi =>
      _$this._allCommentApi ??= new ApiStateBuilder<void>();
  set allCommentApi(ApiStateBuilder<void>? allCommentApi) =>
      _$this._allCommentApi = allCommentApi;

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

  ListBuilder<dynamic>? _comments;
  ListBuilder<dynamic> get comments =>
      _$this._comments ??= new ListBuilder<dynamic>();
  set comments(ListBuilder<dynamic>? comments) => _$this._comments = comments;

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
      _boardController = $v.boardController;
      _title = $v.title;
      _comment = $v.comment;
      _activeIndex = $v.activeIndex;
      _allProjectApi = $v.allProjectApi.toBuilder();
      _addCommentApi = $v.addCommentApi.toBuilder();
      _allCommentApi = $v.allCommentApi.toBuilder();
      _projectDataApi = $v.projectDataApi.toBuilder();
      _allProjects = $v.allProjects.toBuilder();
      _comments = $v.comments?.toBuilder();
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
              boardController: BuiltValueNullFieldError.checkNotNull(
                  boardController, r'ProjectState', 'boardController'),
              title: title,
              comment: comment,
              activeIndex: activeIndex,
              allProjectApi: allProjectApi.build(),
              addCommentApi: addCommentApi.build(),
              allCommentApi: allCommentApi.build(),
              projectDataApi: projectDataApi.build(),
              allProjects: allProjects.build(),
              comments: _comments?.build(),
              projectDataById: _projectDataById?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allProjectApi';
        allProjectApi.build();
        _$failedField = 'addCommentApi';
        addCommentApi.build();
        _$failedField = 'allCommentApi';
        allCommentApi.build();
        _$failedField = 'projectDataApi';
        projectDataApi.build();
        _$failedField = 'allProjects';
        allProjects.build();
        _$failedField = 'comments';
        _comments?.build();
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
