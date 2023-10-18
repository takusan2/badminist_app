// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_read_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserReadModel extends UserReadModel {
  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final UserStatus status;

  factory _$UserReadModel([void Function(UserReadModelBuilder)? updates]) =>
      (new UserReadModelBuilder()..update(updates))._build();

  _$UserReadModel._(
      {required this.id,
      required this.name,
      required this.email,
      required this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'UserReadModel', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'UserReadModel', 'name');
    BuiltValueNullFieldError.checkNotNull(email, r'UserReadModel', 'email');
    BuiltValueNullFieldError.checkNotNull(status, r'UserReadModel', 'status');
  }

  @override
  UserReadModel rebuild(void Function(UserReadModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserReadModelBuilder toBuilder() => new UserReadModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserReadModel &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserReadModel')
          ..add('id', id)
          ..add('name', name)
          ..add('email', email)
          ..add('status', status))
        .toString();
  }
}

class UserReadModelBuilder
    implements Builder<UserReadModel, UserReadModelBuilder> {
  _$UserReadModel? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  UserStatus? _status;
  UserStatus? get status => _$this._status;
  set status(UserStatus? status) => _$this._status = status;

  UserReadModelBuilder() {
    UserReadModel._defaults(this);
  }

  UserReadModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _email = $v.email;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserReadModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserReadModel;
  }

  @override
  void update(void Function(UserReadModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserReadModel build() => _build();

  _$UserReadModel _build() {
    final _$result = _$v ??
        new _$UserReadModel._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'UserReadModel', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'UserReadModel', 'name'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'UserReadModel', 'email'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'UserReadModel', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
