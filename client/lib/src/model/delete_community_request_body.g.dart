// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_community_request_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteCommunityRequestBody extends DeleteCommunityRequestBody {
  @override
  final String? communityId;

  factory _$DeleteCommunityRequestBody(
          [void Function(DeleteCommunityRequestBodyBuilder)? updates]) =>
      (new DeleteCommunityRequestBodyBuilder()..update(updates))._build();

  _$DeleteCommunityRequestBody._({this.communityId}) : super._();

  @override
  DeleteCommunityRequestBody rebuild(
          void Function(DeleteCommunityRequestBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteCommunityRequestBodyBuilder toBuilder() =>
      new DeleteCommunityRequestBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteCommunityRequestBody &&
        communityId == other.communityId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, communityId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeleteCommunityRequestBody')
          ..add('communityId', communityId))
        .toString();
  }
}

class DeleteCommunityRequestBodyBuilder
    implements
        Builder<DeleteCommunityRequestBody, DeleteCommunityRequestBodyBuilder> {
  _$DeleteCommunityRequestBody? _$v;

  String? _communityId;
  String? get communityId => _$this._communityId;
  set communityId(String? communityId) => _$this._communityId = communityId;

  DeleteCommunityRequestBodyBuilder() {
    DeleteCommunityRequestBody._defaults(this);
  }

  DeleteCommunityRequestBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _communityId = $v.communityId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteCommunityRequestBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteCommunityRequestBody;
  }

  @override
  void update(void Function(DeleteCommunityRequestBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteCommunityRequestBody build() => _build();

  _$DeleteCommunityRequestBody _build() {
    final _$result =
        _$v ?? new _$DeleteCommunityRequestBody._(communityId: communityId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
