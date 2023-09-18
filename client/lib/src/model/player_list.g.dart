// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlayerList extends PlayerList {
  @override
  final BuiltList<PlayerReadModel>? players;

  factory _$PlayerList([void Function(PlayerListBuilder)? updates]) =>
      (new PlayerListBuilder()..update(updates))._build();

  _$PlayerList._({this.players}) : super._();

  @override
  PlayerList rebuild(void Function(PlayerListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlayerListBuilder toBuilder() => new PlayerListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlayerList && players == other.players;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, players.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlayerList')..add('players', players))
        .toString();
  }
}

class PlayerListBuilder implements Builder<PlayerList, PlayerListBuilder> {
  _$PlayerList? _$v;

  ListBuilder<PlayerReadModel>? _players;
  ListBuilder<PlayerReadModel> get players =>
      _$this._players ??= new ListBuilder<PlayerReadModel>();
  set players(ListBuilder<PlayerReadModel>? players) =>
      _$this._players = players;

  PlayerListBuilder() {
    PlayerList._defaults(this);
  }

  PlayerListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _players = $v.players?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlayerList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlayerList;
  }

  @override
  void update(void Function(PlayerListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlayerList build() => _build();

  _$PlayerList _build() {
    _$PlayerList _$result;
    try {
      _$result = _$v ?? new _$PlayerList._(players: _players?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'players';
        _players?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PlayerList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
