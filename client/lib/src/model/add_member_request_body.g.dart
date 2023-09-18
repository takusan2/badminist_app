// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_member_request_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddMemberRequestBody extends AddMemberRequestBody {
  @override
  final String? communityId;
  @override
  final String? userId;
  @override
  final Role? role;

  factory _$AddMemberRequestBody(
          [void Function(AddMemberRequestBodyBuilder)? updates]) =>
      (new AddMemberRequestBodyBuilder()..update(updates))._build();

  _$AddMemberRequestBody._({this.communityId, this.userId, this.role})
      : super._();

  @override
  AddMemberRequestBody rebuild(
          void Function(AddMemberRequestBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddMemberRequestBodyBuilder toBuilder() =>
      new AddMemberRequestBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddMemberRequestBody &&
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
    return (newBuiltValueToStringHelper(r'AddMemberRequestBody')
          ..add('communityId', communityId)
          ..add('userId', userId)
          ..add('role', role))
        .toString();
  }
}

class AddMemberRequestBodyBuilder
    implements Builder<AddMemberRequestBody, AddMemberRequestBodyBuilder> {
  _$AddMemberRequestBody? _$v;

  String? _communityId;
  String? get communityId => _$this._communityId;
  set communityId(String? communityId) => _$this._communityId = communityId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  Role? _role;
  Role? get role => _$this._role;
  set role(Role? role) => _$this._role = role;

  AddMemberRequestBodyBuilder() {
    AddMemberRequestBody._defaults(this);
  }

  AddMemberRequestBodyBuilder get _$this {
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
  void replace(AddMemberRequestBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddMemberRequestBody;
  }

  @override
  void update(void Function(AddMemberRequestBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddMemberRequestBody build() => _build();

  _$AddMemberRequestBody _build() {
    final _$result = _$v ??
        new _$AddMemberRequestBody._(
            communityId: communityId, userId: userId, role: role);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
