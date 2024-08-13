// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectData> _$projectDataSerializer = new _$ProjectDataSerializer();

class _$ProjectDataSerializer implements StructuredSerializer<ProjectData> {
  @override
  final Iterable<Type> types = const [ProjectData, _$ProjectData];
  @override
  final String wireName = 'ProjectData';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProjectData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parentId;
    if (value != null) {
      result
        ..add('parentId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.order;
    if (value != null) {
      result
        ..add('order')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.color;
    if (value != null) {
      result
        ..add('color')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.commentCount;
    if (value != null) {
      result
        ..add('commentCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isShared;
    if (value != null) {
      result
        ..add('isShared')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isFavorite;
    if (value != null) {
      result
        ..add('isFavorite')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isInboxProject;
    if (value != null) {
      result
        ..add('isInboxProject')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isTeamInbox;
    if (value != null) {
      result
        ..add('isTeamInbox')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.viewStyle;
    if (value != null) {
      result
        ..add('viewStyle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ProjectData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'parentId':
          result.parentId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'commentCount':
          result.commentCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isShared':
          result.isShared = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isFavorite':
          result.isFavorite = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isInboxProject':
          result.isInboxProject = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isTeamInbox':
          result.isTeamInbox = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'viewStyle':
          result.viewStyle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$ProjectData extends ProjectData {
  @override
  final String? id;
  @override
  final int? parentId;
  @override
  final int? order;
  @override
  final String? color;
  @override
  final String? name;
  @override
  final int? commentCount;
  @override
  final bool? isShared;
  @override
  final bool? isFavorite;
  @override
  final bool? isInboxProject;
  @override
  final bool? isTeamInbox;
  @override
  final String? url;
  @override
  final String? viewStyle;

  factory _$ProjectData([void Function(ProjectDataBuilder)? updates]) =>
      (new ProjectDataBuilder()..update(updates))._build();

  _$ProjectData._(
      {this.id,
      this.parentId,
      this.order,
      this.color,
      this.name,
      this.commentCount,
      this.isShared,
      this.isFavorite,
      this.isInboxProject,
      this.isTeamInbox,
      this.url,
      this.viewStyle})
      : super._();

  @override
  ProjectData rebuild(void Function(ProjectDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectDataBuilder toBuilder() => new ProjectDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectData &&
        id == other.id &&
        parentId == other.parentId &&
        order == other.order &&
        color == other.color &&
        name == other.name &&
        commentCount == other.commentCount &&
        isShared == other.isShared &&
        isFavorite == other.isFavorite &&
        isInboxProject == other.isInboxProject &&
        isTeamInbox == other.isTeamInbox &&
        url == other.url &&
        viewStyle == other.viewStyle;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, parentId.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, commentCount.hashCode);
    _$hash = $jc(_$hash, isShared.hashCode);
    _$hash = $jc(_$hash, isFavorite.hashCode);
    _$hash = $jc(_$hash, isInboxProject.hashCode);
    _$hash = $jc(_$hash, isTeamInbox.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, viewStyle.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectData')
          ..add('id', id)
          ..add('parentId', parentId)
          ..add('order', order)
          ..add('color', color)
          ..add('name', name)
          ..add('commentCount', commentCount)
          ..add('isShared', isShared)
          ..add('isFavorite', isFavorite)
          ..add('isInboxProject', isInboxProject)
          ..add('isTeamInbox', isTeamInbox)
          ..add('url', url)
          ..add('viewStyle', viewStyle))
        .toString();
  }
}

class ProjectDataBuilder implements Builder<ProjectData, ProjectDataBuilder> {
  _$ProjectData? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _parentId;
  int? get parentId => _$this._parentId;
  set parentId(int? parentId) => _$this._parentId = parentId;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _commentCount;
  int? get commentCount => _$this._commentCount;
  set commentCount(int? commentCount) => _$this._commentCount = commentCount;

  bool? _isShared;
  bool? get isShared => _$this._isShared;
  set isShared(bool? isShared) => _$this._isShared = isShared;

  bool? _isFavorite;
  bool? get isFavorite => _$this._isFavorite;
  set isFavorite(bool? isFavorite) => _$this._isFavorite = isFavorite;

  bool? _isInboxProject;
  bool? get isInboxProject => _$this._isInboxProject;
  set isInboxProject(bool? isInboxProject) =>
      _$this._isInboxProject = isInboxProject;

  bool? _isTeamInbox;
  bool? get isTeamInbox => _$this._isTeamInbox;
  set isTeamInbox(bool? isTeamInbox) => _$this._isTeamInbox = isTeamInbox;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _viewStyle;
  String? get viewStyle => _$this._viewStyle;
  set viewStyle(String? viewStyle) => _$this._viewStyle = viewStyle;

  ProjectDataBuilder();

  ProjectDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _parentId = $v.parentId;
      _order = $v.order;
      _color = $v.color;
      _name = $v.name;
      _commentCount = $v.commentCount;
      _isShared = $v.isShared;
      _isFavorite = $v.isFavorite;
      _isInboxProject = $v.isInboxProject;
      _isTeamInbox = $v.isTeamInbox;
      _url = $v.url;
      _viewStyle = $v.viewStyle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectData;
  }

  @override
  void update(void Function(ProjectDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectData build() => _build();

  _$ProjectData _build() {
    final _$result = _$v ??
        new _$ProjectData._(
            id: id,
            parentId: parentId,
            order: order,
            color: color,
            name: name,
            commentCount: commentCount,
            isShared: isShared,
            isFavorite: isFavorite,
            isInboxProject: isInboxProject,
            isTeamInbox: isTeamInbox,
            url: url,
            viewStyle: viewStyle);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
