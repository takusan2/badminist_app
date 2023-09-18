// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_player_property_request_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangePlayerPropertyRequestBody
    extends ChangePlayerPropertyRequestBody {
  @override
  final String? communityId;
  @override
  final String? playerId;
  @override
  final String? name;
  @override
  final PlayerGender? gender;
  @override
  final int? age;
  @override
  final PlayerLevel? level;
  @override
  final int? numGames;
  @override
  final PlayerStatus? status;

  factory _$ChangePlayerPropertyRequestBody(
          [void Function(ChangePlayerPropertyRequestBodyBuilder)? updates]) =>
      (new ChangePlayerPropertyRequestBodyBuilder()..update(updates))._build();

  _$ChangePlayerPropertyRequestBody._(
      {this.communityId,
      this.playerId,
      this.name,
      this.gender,
      this.age,
      this.level,
      this.numGames,
      this.status})
      : super._();

  @override
  ChangePlayerPropertyRequestBody rebuild(
          void Function(ChangePlayerPropertyRequestBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangePlayerPropertyRequestBodyBuilder toBuilder() =>
      new ChangePlayerPropertyRequestBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangePlayerPropertyRequestBody &&
        communityId == other.communityId &&
        playerId == other.playerId &&
        name == other.name &&
        gender == other.gender &&
        age == other.age &&
        level == other.level &&
        numGames == other.numGames &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, communityId.hashCode);
    _$hash = $jc(_$hash, playerId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, age.hashCode);
    _$hash = $jc(_$hash, level.hashCode);
    _$hash = $jc(_$hash, numGames.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangePlayerPropertyRequestBody')
          ..add('communityId', communityId)
          ..add('playerId', playerId)
          ..add('name', name)
          ..add('gender', gender)
          ..add('age', age)
          ..add('level', level)
          ..add('numGames', numGames)
          ..add('status', status))
        .toString();
  }
}

class ChangePlayerPropertyRequestBodyBuilder
    implements
        Builder<ChangePlayerPropertyRequestBody,
            ChangePlayerPropertyRequestBodyBuilder> {
  _$ChangePlayerPropertyRequestBody? _$v;

  String? _communityId;
  String? get communityId => _$this._communityId;
  set communityId(String? communityId) => _$this._communityId = communityId;

  String? _playerId;
  String? get playerId => _$this._playerId;
  set playerId(String? playerId) => _$this._playerId = playerId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PlayerGender? _gender;
  PlayerGender? get gender => _$this._gender;
  set gender(PlayerGender? gender) => _$this._gender = gender;

  int? _age;
  int? get age => _$this._age;
  set age(int? age) => _$this._age = age;

  PlayerLevel? _level;
  PlayerLevel? get level => _$this._level;
  set level(PlayerLevel? level) => _$this._level = level;

  int? _numGames;
  int? get numGames => _$this._numGames;
  set numGames(int? numGames) => _$this._numGames = numGames;

  PlayerStatus? _status;
  PlayerStatus? get status => _$this._status;
  set status(PlayerStatus? status) => _$this._status = status;

  ChangePlayerPropertyRequestBodyBuilder() {
    ChangePlayerPropertyRequestBody._defaults(this);
  }

  ChangePlayerPropertyRequestBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _communityId = $v.communityId;
      _playerId = $v.playerId;
      _name = $v.name;
      _gender = $v.gender;
      _age = $v.age;
      _level = $v.level;
      _numGames = $v.numGames;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangePlayerPropertyRequestBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangePlayerPropertyRequestBody;
  }

  @override
  void update(void Function(ChangePlayerPropertyRequestBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangePlayerPropertyRequestBody build() => _build();

  _$ChangePlayerPropertyRequestBody _build() {
    final _$result = _$v ??
        new _$ChangePlayerPropertyRequestBody._(
            communityId: communityId,
            playerId: playerId,
            name: name,
            gender: gender,
            age: age,
            level: level,
            numGames: numGames,
            status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
