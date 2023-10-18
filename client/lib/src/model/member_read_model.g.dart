// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_read_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MemberReadModel extends MemberReadModel {
  @override
  final String memberId;
  @override
  final UserReadModel user;
  @override
  final Role role;

  factory _$MemberReadModel([void Function(MemberReadModelBuilder)? updates]) =>
      (new MemberReadModelBuilder()..update(updates))._build();

  _$MemberReadModel._(
      {required this.memberId, required this.user, required this.role})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        memberId, r'MemberReadModel', 'memberId');
    BuiltValueNullFieldError.checkNotNull(user, r'MemberReadModel', 'user');
    BuiltValueNullFieldError.checkNotNull(role, r'MemberReadModel', 'role');
  }

  @override
  MemberReadModel rebuild(void Function(MemberReadModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MemberReadModelBuilder toBuilder() =>
      new MemberReadModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MemberReadModel &&
        memberId == other.memberId &&
        user == other.user &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, memberId.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MemberReadModel')
          ..add('memberId', memberId)
          ..add('user', user)
          ..add('role', role))
        .toString();
  }
}

class MemberReadModelBuilder
    implements Builder<MemberReadModel, MemberReadModelBuilder> {
  _$MemberReadModel? _$v;

  String? _memberId;
  String? get memberId => _$this._memberId;
  set memberId(String? memberId) => _$this._memberId = memberId;

  UserReadModelBuilder? _user;
  UserReadModelBuilder get user => _$this._user ??= new UserReadModelBuilder();
  set user(UserReadModelBuilder? user) => _$this._user = user;

  Role? _role;
  Role? get role => _$this._role;
  set role(Role? role) => _$this._role = role;

  MemberReadModelBuilder() {
    MemberReadModel._defaults(this);
  }

  MemberReadModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _memberId = $v.memberId;
      _user = $v.user.toBuilder();
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MemberReadModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MemberReadModel;
  }

  @override
  void update(void Function(MemberReadModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MemberReadModel build() => _build();

  _$MemberReadModel _build() {
    _$MemberReadModel _$result;
    try {
      _$result = _$v ??
          new _$MemberReadModel._(
              memberId: BuiltValueNullFieldError.checkNotNull(
                  memberId, r'MemberReadModel', 'memberId'),
              user: user.build(),
              role: BuiltValueNullFieldError.checkNotNull(
                  role, r'MemberReadModel', 'role'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MemberReadModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
