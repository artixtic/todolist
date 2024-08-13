// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_data_by_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectDataById> _$projectDataByIdSerializer =
    new _$ProjectDataByIdSerializer();

class _$ProjectDataByIdSerializer
    implements StructuredSerializer<ProjectDataById> {
  @override
  final Iterable<Type> types = const [ProjectDataById, _$ProjectDataById];
  @override
  final String wireName = 'ProjectDataById';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProjectDataById object,
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
    value = object.projectId;
    if (value != null) {
      result
        ..add('projectId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.order;
    if (value != null) {
      result
        ..add('order')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sectionData;
    if (value != null) {
      result
        ..add('sectionData')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(dynamic)])));
    }
    return result;
  }

  @override
  ProjectDataById deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectDataByIdBuilder();

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
        case 'projectId':
          result.projectId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sectionData':
          result.sectionData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(dynamic)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ProjectDataById extends ProjectDataById {
  @override
  final String? id;
  @override
  final String? projectId;
  @override
  final int? order;
  @override
  final String? name;
  @override
  final BuiltList<dynamic>? sectionData;

  factory _$ProjectDataById([void Function(ProjectDataByIdBuilder)? updates]) =>
      (new ProjectDataByIdBuilder()..update(updates))._build();

  _$ProjectDataById._(
      {this.id, this.projectId, this.order, this.name, this.sectionData})
      : super._();

  @override
  ProjectDataById rebuild(void Function(ProjectDataByIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectDataByIdBuilder toBuilder() =>
      new ProjectDataByIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectDataById &&
        id == other.id &&
        projectId == other.projectId &&
        order == other.order &&
        name == other.name &&
        sectionData == other.sectionData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, sectionData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectDataById')
          ..add('id', id)
          ..add('projectId', projectId)
          ..add('order', order)
          ..add('name', name)
          ..add('sectionData', sectionData))
        .toString();
  }
}

class ProjectDataByIdBuilder
    implements Builder<ProjectDataById, ProjectDataByIdBuilder> {
  _$ProjectDataById? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _projectId;
  String? get projectId => _$this._projectId;
  set projectId(String? projectId) => _$this._projectId = projectId;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<dynamic>? _sectionData;
  ListBuilder<dynamic> get sectionData =>
      _$this._sectionData ??= new ListBuilder<dynamic>();
  set sectionData(ListBuilder<dynamic>? sectionData) =>
      _$this._sectionData = sectionData;

  ProjectDataByIdBuilder();

  ProjectDataByIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _projectId = $v.projectId;
      _order = $v.order;
      _name = $v.name;
      _sectionData = $v.sectionData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectDataById other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectDataById;
  }

  @override
  void update(void Function(ProjectDataByIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectDataById build() => _build();

  _$ProjectDataById _build() {
    _$ProjectDataById _$result;
    try {
      _$result = _$v ??
          new _$ProjectDataById._(
              id: id,
              projectId: projectId,
              order: order,
              name: name,
              sectionData: _sectionData?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sectionData';
        _sectionData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProjectDataById', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
