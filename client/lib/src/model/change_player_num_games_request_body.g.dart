// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_player_num_games_request_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangePlayerNumGamesRequestBody
    extends ChangePlayerNumGamesRequestBody {
  @override
  final String? communityId;
  @override
  final String? playerId;
  @override
  final int? numGames;

  factory _$ChangePlayerNumGamesRequestBody(
          [void Function(ChangePlayerNumGamesRequestBodyBuilder)? updates]) =>
      (new ChangePlayerNumGamesRequestBodyBuilder()..update(updates))._build();

  _$ChangePlayerNumGamesRequestBody._(
      {this.communityId, this.playerId, this.numGames})
      : super._();

  @override
  ChangePlayerNumGamesRequestBody rebuild(
          void Function(ChangePlayerNumGamesRequestBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangePlayerNumGamesRequestBodyBuilder toBuilder() =>
      new ChangePlayerNumGamesRequestBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangePlayerNumGamesRequestBody &&
        communityId == other.communityId &&
        playerId == other.playerId &&
        numGames == other.numGames;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, communityId.hashCode);
    _$hash = $jc(_$hash, playerId.hashCode);
    _$hash = $jc(_$hash, numGames.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangePlayerNumGamesRequestBody')
          ..add('communityId', communityId)
          ..add('playerId', playerId)
          ..add('numGames', numGames))
        .toString();
  }
}

class ChangePlayerNumGamesRequestBodyBuilder
    implements
        Builder<ChangePlayerNumGamesRequestBody,
            ChangePlayerNumGamesRequestBodyBuilder> {
  _$ChangePlayerNumGamesRequestBody? _$v;

  String? _communityId;
  String? get communityId => _$this._communityId;
  set communityId(String? communityId) => _$this._communityId = communityId;

  String? _playerId;
  String? get playerId => _$this._playerId;
  set playerId(String? playerId) => _$this._playerId = playerId;

  int? _numGames;
  int? get numGames => _$this._numGames;
  set numGames(int? numGames) => _$this._numGames = numGames;

  ChangePlayerNumGamesRequestBodyBuilder() {
    ChangePlayerNumGamesRequestBody._defaults(this);
  }

  ChangePlayerNumGamesRequestBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _communityId = $v.communityId;
      _playerId = $v.playerId;
      _numGames = $v.numGames;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangePlayerNumGamesRequestBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangePlayerNumGamesRequestBody;
  }

  @override
  void update(void Function(ChangePlayerNumGamesRequestBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangePlayerNumGamesRequestBody build() => _build();

  _$ChangePlayerNumGamesRequestBody _build() {
    final _$result = _$v ??
        new _$ChangePlayerNumGamesRequestBody._(
            communityId: communityId, playerId: playerId, numGames: numGames);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
