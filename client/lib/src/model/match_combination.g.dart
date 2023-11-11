// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_combination.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MatchCombination extends MatchCombination {
  @override
  final BuiltList<Match> matches;
  @override
  final BuiltList<PlayerReadModel>? restPlayers;

  factory _$MatchCombination(
          [void Function(MatchCombinationBuilder)? updates]) =>
      (new MatchCombinationBuilder()..update(updates))._build();

  _$MatchCombination._({required this.matches, this.restPlayers}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        matches, r'MatchCombination', 'matches');
  }

  @override
  MatchCombination rebuild(void Function(MatchCombinationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MatchCombinationBuilder toBuilder() =>
      new MatchCombinationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MatchCombination &&
        matches == other.matches &&
        restPlayers == other.restPlayers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, matches.hashCode);
    _$hash = $jc(_$hash, restPlayers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MatchCombination')
          ..add('matches', matches)
          ..add('restPlayers', restPlayers))
        .toString();
  }
}

class MatchCombinationBuilder
    implements Builder<MatchCombination, MatchCombinationBuilder> {
  _$MatchCombination? _$v;

  ListBuilder<Match>? _matches;
  ListBuilder<Match> get matches =>
      _$this._matches ??= new ListBuilder<Match>();
  set matches(ListBuilder<Match>? matches) => _$this._matches = matches;

  ListBuilder<PlayerReadModel>? _restPlayers;
  ListBuilder<PlayerReadModel> get restPlayers =>
      _$this._restPlayers ??= new ListBuilder<PlayerReadModel>();
  set restPlayers(ListBuilder<PlayerReadModel>? restPlayers) =>
      _$this._restPlayers = restPlayers;

  MatchCombinationBuilder() {
    MatchCombination._defaults(this);
  }

  MatchCombinationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _matches = $v.matches.toBuilder();
      _restPlayers = $v.restPlayers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MatchCombination other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MatchCombination;
  }

  @override
  void update(void Function(MatchCombinationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MatchCombination build() => _build();

  _$MatchCombination _build() {
    _$MatchCombination _$result;
    try {
      _$result = _$v ??
          new _$MatchCombination._(
              matches: matches.build(), restPlayers: _restPlayers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'matches';
        matches.build();
        _$failedField = 'restPlayers';
        _restPlayers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MatchCombination', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
