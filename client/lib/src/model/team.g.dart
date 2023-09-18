// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Team extends Team {
  @override
  final BuiltList<PlayerReadModel>? players;

  factory _$Team([void Function(TeamBuilder)? updates]) =>
      (new TeamBuilder()..update(updates))._build();

  _$Team._({this.players}) : super._();

  @override
  Team rebuild(void Function(TeamBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamBuilder toBuilder() => new TeamBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Team && players == other.players;
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
    return (newBuiltValueToStringHelper(r'Team')..add('players', players))
        .toString();
  }
}

class TeamBuilder implements Builder<Team, TeamBuilder> {
  _$Team? _$v;

  ListBuilder<PlayerReadModel>? _players;
  ListBuilder<PlayerReadModel> get players =>
      _$this._players ??= new ListBuilder<PlayerReadModel>();
  set players(ListBuilder<PlayerReadModel>? players) =>
      _$this._players = players;

  TeamBuilder() {
    Team._defaults(this);
  }

  TeamBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _players = $v.players?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Team other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Team;
  }

  @override
  void update(void Function(TeamBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Team build() => _build();

  _$Team _build() {
    _$Team _$result;
    try {
      _$result = _$v ?? new _$Team._(players: _players?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'players';
        _players?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Team', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
