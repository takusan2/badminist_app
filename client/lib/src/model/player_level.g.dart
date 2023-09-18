// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_level.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PlayerLevel _$beginner = const PlayerLevel._('beginner');
const PlayerLevel _$intermediate = const PlayerLevel._('intermediate');
const PlayerLevel _$advanced = const PlayerLevel._('advanced');

PlayerLevel _$valueOf(String name) {
  switch (name) {
    case 'beginner':
      return _$beginner;
    case 'intermediate':
      return _$intermediate;
    case 'advanced':
      return _$advanced;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PlayerLevel> _$values =
    new BuiltSet<PlayerLevel>(const <PlayerLevel>[
  _$beginner,
  _$intermediate,
  _$advanced,
]);

class _$PlayerLevelMeta {
  const _$PlayerLevelMeta();
  PlayerLevel get beginner => _$beginner;
  PlayerLevel get intermediate => _$intermediate;
  PlayerLevel get advanced => _$advanced;
  PlayerLevel valueOf(String name) => _$valueOf(name);
  BuiltSet<PlayerLevel> get values => _$values;
}

abstract class _$PlayerLevelMixin {
  // ignore: non_constant_identifier_names
  _$PlayerLevelMeta get PlayerLevel => const _$PlayerLevelMeta();
}

Serializer<PlayerLevel> _$playerLevelSerializer = new _$PlayerLevelSerializer();

class _$PlayerLevelSerializer implements PrimitiveSerializer<PlayerLevel> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'beginner': 'beginner',
    'intermediate': 'intermediate',
    'advanced': 'advanced',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'beginner': 'beginner',
    'intermediate': 'intermediate',
    'advanced': 'advanced',
  };

  @override
  final Iterable<Type> types = const <Type>[PlayerLevel];
  @override
  final String wireName = 'PlayerLevel';

  @override
  Object serialize(Serializers serializers, PlayerLevel object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PlayerLevel deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PlayerLevel.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
