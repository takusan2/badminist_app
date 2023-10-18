// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_player_num_games_request_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResetPlayerNumGamesRequestBody extends ResetPlayerNumGamesRequestBody {
  @override
  final String communityId;
  @override
  final String playerId;

  factory _$ResetPlayerNumGamesRequestBody(
          [void Function(ResetPlayerNumGamesRequestBodyBuilder)? updates]) =>
      (new ResetPlayerNumGamesRequestBodyBuilder()..update(updates))._build();

  _$ResetPlayerNumGamesRequestBody._(
      {required this.communityId, required this.playerId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        communityId, r'ResetPlayerNumGamesRequestBody', 'communityId');
    BuiltValueNullFieldError.checkNotNull(
        playerId, r'ResetPlayerNumGamesRequestBody', 'playerId');
  }

  @override
  ResetPlayerNumGamesRequestBody rebuild(
          void Function(ResetPlayerNumGamesRequestBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResetPlayerNumGamesRequestBodyBuilder toBuilder() =>
      new ResetPlayerNumGamesRequestBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetPlayerNumGamesRequestBody &&
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
    return (newBuiltValueToStringHelper(r'ResetPlayerNumGamesRequestBody')
          ..add('communityId', communityId)
          ..add('playerId', playerId))
        .toString();
  }
}

class ResetPlayerNumGamesRequestBodyBuilder
    implements
        Builder<ResetPlayerNumGamesRequestBody,
            ResetPlayerNumGamesRequestBodyBuilder> {
  _$ResetPlayerNumGamesRequestBody? _$v;

  String? _communityId;
  String? get communityId => _$this._communityId;
  set communityId(String? communityId) => _$this._communityId = communityId;

  String? _playerId;
  String? get playerId => _$this._playerId;
  set playerId(String? playerId) => _$this._playerId = playerId;

  ResetPlayerNumGamesRequestBodyBuilder() {
    ResetPlayerNumGamesRequestBody._defaults(this);
  }

  ResetPlayerNumGamesRequestBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _communityId = $v.communityId;
      _playerId = $v.playerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResetPlayerNumGamesRequestBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResetPlayerNumGamesRequestBody;
  }

  @override
  void update(void Function(ResetPlayerNumGamesRequestBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResetPlayerNumGamesRequestBody build() => _build();

  _$ResetPlayerNumGamesRequestBody _build() {
    final _$result = _$v ??
        new _$ResetPlayerNumGamesRequestBody._(
            communityId: BuiltValueNullFieldError.checkNotNull(
                communityId, r'ResetPlayerNumGamesRequestBody', 'communityId'),
            playerId: BuiltValueNullFieldError.checkNotNull(
                playerId, r'ResetPlayerNumGamesRequestBody', 'playerId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
