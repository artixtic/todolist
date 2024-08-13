// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'startup_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartupState extends StartupState {
  @override
  final ApiState<void> everythingApi;
  @override
  final int? index;

  factory _$StartupState([void Function(StartupStateBuilder)? updates]) =>
      (new StartupStateBuilder()..update(updates))._build();

  _$StartupState._({required this.everythingApi, this.index}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        everythingApi, r'StartupState', 'everythingApi');
  }

  @override
  StartupState rebuild(void Function(StartupStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartupStateBuilder toBuilder() => new StartupStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartupState &&
        everythingApi == other.everythingApi &&
        index == other.index;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, everythingApi.hashCode);
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StartupState')
          ..add('everythingApi', everythingApi)
          ..add('index', index))
        .toString();
  }
}

class StartupStateBuilder
    implements Builder<StartupState, StartupStateBuilder> {
  _$StartupState? _$v;

  ApiStateBuilder<void>? _everythingApi;
  ApiStateBuilder<void> get everythingApi =>
      _$this._everythingApi ??= new ApiStateBuilder<void>();
  set everythingApi(ApiStateBuilder<void>? everythingApi) =>
      _$this._everythingApi = everythingApi;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  StartupStateBuilder() {
    StartupState._initialize(this);
  }

  StartupStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _everythingApi = $v.everythingApi.toBuilder();
      _index = $v.index;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartupState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartupState;
  }

  @override
  void update(void Function(StartupStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartupState build() => _build();

  _$StartupState _build() {
    _$StartupState _$result;
    try {
      _$result = _$v ??
          new _$StartupState._(
              everythingApi: everythingApi.build(), index: index);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'everythingApi';
        everythingApi.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StartupState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
