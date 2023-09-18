// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_member_role_request_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangeMemberRoleRequestBody extends ChangeMemberRoleRequestBody {
  @override
  final String? communityId;
  @override
  final String? userId;
  @override
  final Role? role;

  factory _$ChangeMemberRoleRequestBody(
          [void Function(ChangeMemberRoleRequestBodyBuilder)? updates]) =>
      (new ChangeMemberRoleRequestBodyBuilder()..update(updates))._build();

  _$ChangeMemberRoleRequestBody._({this.communityId, this.userId, this.role})
      : super._();

  @override
  ChangeMemberRoleRequestBody rebuild(
          void Function(ChangeMemberRoleRequestBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeMemberRoleRequestBodyBuilder toBuilder() =>
      new ChangeMemberRoleRequestBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeMemberRoleRequestBody &&
        communityId == other.communityId &&
        userId == other.userId &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, communityId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangeMemberRoleRequestBody')
          ..add('communityId', communityId)
          ..add('userId', userId)
          ..add('role', role))
        .toString();
  }
}

class ChangeMemberRoleRequestBodyBuilder
    implements
        Builder<ChangeMemberRoleRequestBody,
            ChangeMemberRoleRequestBodyBuilder> {
  _$ChangeMemberRoleRequestBody? _$v;

  String? _communityId;
  String? get communityId => _$this._communityId;
  set communityId(String? communityId) => _$this._communityId = communityId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  Role? _role;
  Role? get role => _$this._role;
  set role(Role? role) => _$this._role = role;

  ChangeMemberRoleRequestBodyBuilder() {
    ChangeMemberRoleRequestBody._defaults(this);
  }

  ChangeMemberRoleRequestBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _communityId = $v.communityId;
      _userId = $v.userId;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeMemberRoleRequestBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeMemberRoleRequestBody;
  }

  @override
  void update(void Function(ChangeMemberRoleRequestBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeMemberRoleRequestBody build() => _build();

  _$ChangeMemberRoleRequestBody _build() {
    final _$result = _$v ??
        new _$ChangeMemberRoleRequestBody._(
            communityId: communityId, userId: userId, role: role);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
