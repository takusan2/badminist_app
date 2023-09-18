// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activate_user_request_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ActivateUserRequestBody extends ActivateUserRequestBody {
  @override
  final String? email;
  @override
  final String? confirmPass;

  factory _$ActivateUserRequestBody(
          [void Function(ActivateUserRequestBodyBuilder)? updates]) =>
      (new ActivateUserRequestBodyBuilder()..update(updates))._build();

  _$ActivateUserRequestBody._({this.email, this.confirmPass}) : super._();

  @override
  ActivateUserRequestBody rebuild(
          void Function(ActivateUserRequestBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivateUserRequestBodyBuilder toBuilder() =>
      new ActivateUserRequestBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivateUserRequestBody &&
        email == other.email &&
        confirmPass == other.confirmPass;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, confirmPass.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActivateUserRequestBody')
          ..add('email', email)
          ..add('confirmPass', confirmPass))
        .toString();
  }
}

class ActivateUserRequestBodyBuilder
    implements
        Builder<ActivateUserRequestBody, ActivateUserRequestBodyBuilder> {
  _$ActivateUserRequestBody? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _confirmPass;
  String? get confirmPass => _$this._confirmPass;
  set confirmPass(String? confirmPass) => _$this._confirmPass = confirmPass;

  ActivateUserRequestBodyBuilder() {
    ActivateUserRequestBody._defaults(this);
  }

  ActivateUserRequestBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _confirmPass = $v.confirmPass;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActivateUserRequestBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActivateUserRequestBody;
  }

  @override
  void update(void Function(ActivateUserRequestBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActivateUserRequestBody build() => _build();

  _$ActivateUserRequestBody _build() {
    final _$result = _$v ??
        new _$ActivateUserRequestBody._(email: email, confirmPass: confirmPass);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
