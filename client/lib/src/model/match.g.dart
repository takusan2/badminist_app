// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Match extends Match {
  @override
  final Team? left;
  @override
  final Team? right;

  factory _$Match([void Function(MatchBuilder)? updates]) =>
      (new MatchBuilder()..update(updates))._build();

  _$Match._({this.left, this.right}) : super._();

  @override
  Match rebuild(void Function(MatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MatchBuilder toBuilder() => new MatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Match && left == other.left && right == other.right;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, left.hashCode);
    _$hash = $jc(_$hash, right.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Match')
          ..add('left', left)
          ..add('right', right))
        .toString();
  }
}

class MatchBuilder implements Builder<Match, MatchBuilder> {
  _$Match? _$v;

  TeamBuilder? _left;
  TeamBuilder get left => _$this._left ??= new TeamBuilder();
  set left(TeamBuilder? left) => _$this._left = left;

  TeamBuilder? _right;
  TeamBuilder get right => _$this._right ??= new TeamBuilder();
  set right(TeamBuilder? right) => _$this._right = right;

  MatchBuilder() {
    Match._defaults(this);
  }

  MatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _left = $v.left?.toBuilder();
      _right = $v.right?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Match other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Match;
  }

  @override
  void update(void Function(MatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Match build() => _build();

  _$Match _build() {
    _$Match _$result;
    try {
      _$result =
          _$v ?? new _$Match._(left: _left?.build(), right: _right?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'left';
        _left?.build();
        _$failedField = 'right';
        _right?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Match', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
