// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temporary_registration_request_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TemporaryRegistrationRequestBody
    extends TemporaryRegistrationRequestBody {
  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  factory _$TemporaryRegistrationRequestBody(
          [void Function(TemporaryRegistrationRequestBodyBuilder)? updates]) =>
      (new TemporaryRegistrationRequestBodyBuilder()..update(updates))._build();

  _$TemporaryRegistrationRequestBody._(
      {required this.name, required this.email, required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'TemporaryRegistrationRequestBody', 'name');
    BuiltValueNullFieldError.checkNotNull(
        email, r'TemporaryRegistrationRequestBody', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, r'TemporaryRegistrationRequestBody', 'password');
  }

  @override
  TemporaryRegistrationRequestBody rebuild(
          void Function(TemporaryRegistrationRequestBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TemporaryRegistrationRequestBodyBuilder toBuilder() =>
      new TemporaryRegistrationRequestBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TemporaryRegistrationRequestBody &&
        name == other.name &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TemporaryRegistrationRequestBody')
          ..add('name', name)
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class TemporaryRegistrationRequestBodyBuilder
    implements
        Builder<TemporaryRegistrationRequestBody,
            TemporaryRegistrationRequestBodyBuilder> {
  _$TemporaryRegistrationRequestBody? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  TemporaryRegistrationRequestBodyBuilder() {
    TemporaryRegistrationRequestBody._defaults(this);
  }

  TemporaryRegistrationRequestBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TemporaryRegistrationRequestBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TemporaryRegistrationRequestBody;
  }

  @override
  void update(void Function(TemporaryRegistrationRequestBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TemporaryRegistrationRequestBody build() => _build();

  _$TemporaryRegistrationRequestBody _build() {
    final _$result = _$v ??
        new _$TemporaryRegistrationRequestBody._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'TemporaryRegistrationRequestBody', 'name'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'TemporaryRegistrationRequestBody', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'TemporaryRegistrationRequestBody', 'password'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
