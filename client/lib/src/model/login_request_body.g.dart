// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginRequestBody extends LoginRequestBody {
  @override
  final String email;
  @override
  final String password;

  factory _$LoginRequestBody(
          [void Function(LoginRequestBodyBuilder)? updates]) =>
      (new LoginRequestBodyBuilder()..update(updates))._build();

  _$LoginRequestBody._({required this.email, required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'LoginRequestBody', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, r'LoginRequestBody', 'password');
  }

  @override
  LoginRequestBody rebuild(void Function(LoginRequestBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginRequestBodyBuilder toBuilder() =>
      new LoginRequestBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginRequestBody &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginRequestBody')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class LoginRequestBodyBuilder
    implements Builder<LoginRequestBody, LoginRequestBodyBuilder> {
  _$LoginRequestBody? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  LoginRequestBodyBuilder() {
    LoginRequestBody._defaults(this);
  }

  LoginRequestBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginRequestBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginRequestBody;
  }

  @override
  void update(void Function(LoginRequestBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginRequestBody build() => _build();

  _$LoginRequestBody _build() {
    final _$result = _$v ??
        new _$LoginRequestBody._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'LoginRequestBody', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'LoginRequestBody', 'password'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
