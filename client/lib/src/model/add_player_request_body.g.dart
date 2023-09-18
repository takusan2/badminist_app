// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_player_request_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddPlayerRequestBody extends AddPlayerRequestBody {
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

  factory _$AddPlayerRequestBody(
          [void Function(AddPlayerRequestBodyBuilder)? updates]) =>
      (new AddPlayerRequestBodyBuilder()..update(updates))._build();

  _$AddPlayerRequestBody._(
      {this.name,
      this.gender,
      this.age,
      this.level,
      this.numGames,
      this.status})
      : super._();

  @override
  AddPlayerRequestBody rebuild(
          void Function(AddPlayerRequestBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddPlayerRequestBodyBuilder toBuilder() =>
      new AddPlayerRequestBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddPlayerRequestBody &&
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
    return (newBuiltValueToStringHelper(r'AddPlayerRequestBody')
          ..add('name', name)
          ..add('gender', gender)
          ..add('age', age)
          ..add('level', level)
          ..add('numGames', numGames)
          ..add('status', status))
        .toString();
  }
}

class AddPlayerRequestBodyBuilder
    implements Builder<AddPlayerRequestBody, AddPlayerRequestBodyBuilder> {
  _$AddPlayerRequestBody? _$v;

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

  AddPlayerRequestBodyBuilder() {
    AddPlayerRequestBody._defaults(this);
  }

  AddPlayerRequestBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(AddPlayerRequestBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddPlayerRequestBody;
  }

  @override
  void update(void Function(AddPlayerRequestBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddPlayerRequestBody build() => _build();

  _$AddPlayerRequestBody _build() {
    final _$result = _$v ??
        new _$AddPlayerRequestBody._(
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
