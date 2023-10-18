// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_read_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlayerReadModel extends PlayerReadModel {
  @override
  final String id;
  @override
  final String name;
  @override
  final PlayerGender gender;
  @override
  final int age;
  @override
  final PlayerLevel level;
  @override
  final int numGames;
  @override
  final PlayerStatus status;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$PlayerReadModel([void Function(PlayerReadModelBuilder)? updates]) =>
      (new PlayerReadModelBuilder()..update(updates))._build();

  _$PlayerReadModel._(
      {required this.id,
      required this.name,
      required this.gender,
      required this.age,
      required this.level,
      required this.numGames,
      required this.status,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'PlayerReadModel', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'PlayerReadModel', 'name');
    BuiltValueNullFieldError.checkNotNull(gender, r'PlayerReadModel', 'gender');
    BuiltValueNullFieldError.checkNotNull(age, r'PlayerReadModel', 'age');
    BuiltValueNullFieldError.checkNotNull(level, r'PlayerReadModel', 'level');
    BuiltValueNullFieldError.checkNotNull(
        numGames, r'PlayerReadModel', 'numGames');
    BuiltValueNullFieldError.checkNotNull(status, r'PlayerReadModel', 'status');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'PlayerReadModel', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'PlayerReadModel', 'updatedAt');
  }

  @override
  PlayerReadModel rebuild(void Function(PlayerReadModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlayerReadModelBuilder toBuilder() =>
      new PlayerReadModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlayerReadModel &&
        id == other.id &&
        name == other.name &&
        gender == other.gender &&
        age == other.age &&
        level == other.level &&
        numGames == other.numGames &&
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, age.hashCode);
    _$hash = $jc(_$hash, level.hashCode);
    _$hash = $jc(_$hash, numGames.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlayerReadModel')
          ..add('id', id)
          ..add('name', name)
          ..add('gender', gender)
          ..add('age', age)
          ..add('level', level)
          ..add('numGames', numGames)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PlayerReadModelBuilder
    implements Builder<PlayerReadModel, PlayerReadModelBuilder> {
  _$PlayerReadModel? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  PlayerReadModelBuilder() {
    PlayerReadModel._defaults(this);
  }

  PlayerReadModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _gender = $v.gender;
      _age = $v.age;
      _level = $v.level;
      _numGames = $v.numGames;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlayerReadModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlayerReadModel;
  }

  @override
  void update(void Function(PlayerReadModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlayerReadModel build() => _build();

  _$PlayerReadModel _build() {
    final _$result = _$v ??
        new _$PlayerReadModel._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'PlayerReadModel', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'PlayerReadModel', 'name'),
            gender: BuiltValueNullFieldError.checkNotNull(
                gender, r'PlayerReadModel', 'gender'),
            age: BuiltValueNullFieldError.checkNotNull(
                age, r'PlayerReadModel', 'age'),
            level: BuiltValueNullFieldError.checkNotNull(
                level, r'PlayerReadModel', 'level'),
            numGames: BuiltValueNullFieldError.checkNotNull(
                numGames, r'PlayerReadModel', 'numGames'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'PlayerReadModel', 'status'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'PlayerReadModel', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'PlayerReadModel', 'updatedAt'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
