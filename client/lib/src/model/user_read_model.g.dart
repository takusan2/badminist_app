// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_read_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserReadModel extends UserReadModel {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final UserStatus? status;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  factory _$UserReadModel([void Function(UserReadModelBuilder)? updates]) =>
      (new UserReadModelBuilder()..update(updates))._build();

  _$UserReadModel._(
      {this.id,
      this.name,
      this.email,
      this.status,
      this.createdAt,
      this.updatedAt})
      : super._();

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
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserReadModel')
          ..add('id', id)
          ..add('name', name)
          ..add('email', email)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
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

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

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
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
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
            id: id,
            name: name,
            email: email,
            status: status,
            createdAt: createdAt,
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
