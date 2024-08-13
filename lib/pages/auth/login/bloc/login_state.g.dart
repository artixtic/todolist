// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginState extends LoginState {
  @override
  final String email;
  @override
  final String password;
  @override
  final ApiState<void> loginApi;

  factory _$LoginState([void Function(LoginStateBuilder)? updates]) =>
      (new LoginStateBuilder()..update(updates))._build();

  _$LoginState._(
      {required this.email, required this.password, required this.loginApi})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'LoginState', 'email');
    BuiltValueNullFieldError.checkNotNull(password, r'LoginState', 'password');
    BuiltValueNullFieldError.checkNotNull(loginApi, r'LoginState', 'loginApi');
  }

  @override
  LoginState rebuild(void Function(LoginStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginStateBuilder toBuilder() => new LoginStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginState &&
        email == other.email &&
        password == other.password &&
        loginApi == other.loginApi;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, loginApi.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginState')
          ..add('email', email)
          ..add('password', password)
          ..add('loginApi', loginApi))
        .toString();
  }
}

class LoginStateBuilder implements Builder<LoginState, LoginStateBuilder> {
  _$LoginState? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  ApiStateBuilder<void>? _loginApi;
  ApiStateBuilder<void> get loginApi =>
      _$this._loginApi ??= new ApiStateBuilder<void>();
  set loginApi(ApiStateBuilder<void>? loginApi) => _$this._loginApi = loginApi;

  LoginStateBuilder() {
    LoginState._initialize(this);
  }

  LoginStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _loginApi = $v.loginApi.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginState;
  }

  @override
  void update(void Function(LoginStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginState build() => _build();

  _$LoginState _build() {
    _$LoginState _$result;
    try {
      _$result = _$v ??
          new _$LoginState._(
              email: BuiltValueNullFieldError.checkNotNull(
                  email, r'LoginState', 'email'),
              password: BuiltValueNullFieldError.checkNotNull(
                  password, r'LoginState', 'password'),
              loginApi: loginApi.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'loginApi';
        loginApi.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LoginState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
