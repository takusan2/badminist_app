// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_member_request_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemoveMemberRequestBody extends RemoveMemberRequestBody {
  @override
  final String communityId;
  @override
  final String userId;

  factory _$RemoveMemberRequestBody(
          [void Function(RemoveMemberRequestBodyBuilder)? updates]) =>
      (new RemoveMemberRequestBodyBuilder()..update(updates))._build();

  _$RemoveMemberRequestBody._({required this.communityId, required this.userId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        communityId, r'RemoveMemberRequestBody', 'communityId');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'RemoveMemberRequestBody', 'userId');
  }

  @override
  RemoveMemberRequestBody rebuild(
          void Function(RemoveMemberRequestBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveMemberRequestBodyBuilder toBuilder() =>
      new RemoveMemberRequestBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveMemberRequestBody &&
        communityId == other.communityId &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, communityId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RemoveMemberRequestBody')
          ..add('communityId', communityId)
          ..add('userId', userId))
        .toString();
  }
}

class RemoveMemberRequestBodyBuilder
    implements
        Builder<RemoveMemberRequestBody, RemoveMemberRequestBodyBuilder> {
  _$RemoveMemberRequestBody? _$v;

  String? _communityId;
  String? get communityId => _$this._communityId;
  set communityId(String? communityId) => _$this._communityId = communityId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  RemoveMemberRequestBodyBuilder() {
    RemoveMemberRequestBody._defaults(this);
  }

  RemoveMemberRequestBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _communityId = $v.communityId;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveMemberRequestBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemoveMemberRequestBody;
  }

  @override
  void update(void Function(RemoveMemberRequestBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RemoveMemberRequestBody build() => _build();

  _$RemoveMemberRequestBody _build() {
    final _$result = _$v ??
        new _$RemoveMemberRequestBody._(
            communityId: BuiltValueNullFieldError.checkNotNull(
                communityId, r'RemoveMemberRequestBody', 'communityId'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'RemoveMemberRequestBody', 'userId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
