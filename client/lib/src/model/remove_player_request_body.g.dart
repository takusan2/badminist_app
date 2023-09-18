// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_player_request_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemovePlayerRequestBody extends RemovePlayerRequestBody {
  @override
  final String? communityId;
  @override
  final String? playerId;

  factory _$RemovePlayerRequestBody(
          [void Function(RemovePlayerRequestBodyBuilder)? updates]) =>
      (new RemovePlayerRequestBodyBuilder()..update(updates))._build();

  _$RemovePlayerRequestBody._({this.communityId, this.playerId}) : super._();

  @override
  RemovePlayerRequestBody rebuild(
          void Function(RemovePlayerRequestBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemovePlayerRequestBodyBuilder toBuilder() =>
      new RemovePlayerRequestBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemovePlayerRequestBody &&
        communityId == other.communityId &&
        playerId == other.playerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, communityId.hashCode);
    _$hash = $jc(_$hash, playerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RemovePlayerRequestBody')
          ..add('communityId', communityId)
          ..add('playerId', playerId))
        .toString();
  }
}

class RemovePlayerRequestBodyBuilder
    implements
        Builder<RemovePlayerRequestBody, RemovePlayerRequestBodyBuilder> {
  _$RemovePlayerRequestBody? _$v;

  String? _communityId;
  String? get communityId => _$this._communityId;
  set communityId(String? communityId) => _$this._communityId = communityId;

  String? _playerId;
  String? get playerId => _$this._playerId;
  set playerId(String? playerId) => _$this._playerId = playerId;

  RemovePlayerRequestBodyBuilder() {
    RemovePlayerRequestBody._defaults(this);
  }

  RemovePlayerRequestBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _communityId = $v.communityId;
      _playerId = $v.playerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemovePlayerRequestBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemovePlayerRequestBody;
  }

  @override
  void update(void Function(RemovePlayerRequestBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RemovePlayerRequestBody build() => _build();

  _$RemovePlayerRequestBody _build() {
    final _$result = _$v ??
        new _$RemovePlayerRequestBody._(
            communityId: communityId, playerId: playerId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
