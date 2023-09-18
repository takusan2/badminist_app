// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PlayerStatus _$attend = const PlayerStatus._('attend');
const PlayerStatus _$break_ = const PlayerStatus._('break_');
const PlayerStatus _$absence = const PlayerStatus._('absence');

PlayerStatus _$valueOf(String name) {
  switch (name) {
    case 'attend':
      return _$attend;
    case 'break_':
      return _$break_;
    case 'absence':
      return _$absence;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PlayerStatus> _$values =
    new BuiltSet<PlayerStatus>(const <PlayerStatus>[
  _$attend,
  _$break_,
  _$absence,
]);

class _$PlayerStatusMeta {
  const _$PlayerStatusMeta();
  PlayerStatus get attend => _$attend;
  PlayerStatus get break_ => _$break_;
  PlayerStatus get absence => _$absence;
  PlayerStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<PlayerStatus> get values => _$values;
}

abstract class _$PlayerStatusMixin {
  // ignore: non_constant_identifier_names
  _$PlayerStatusMeta get PlayerStatus => const _$PlayerStatusMeta();
}

Serializer<PlayerStatus> _$playerStatusSerializer =
    new _$PlayerStatusSerializer();

class _$PlayerStatusSerializer implements PrimitiveSerializer<PlayerStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'attend': 'attend',
    'break_': 'break',
    'absence': 'absence',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'attend': 'attend',
    'break': 'break_',
    'absence': 'absence',
  };

  @override
  final Iterable<Type> types = const <Type>[PlayerStatus];
  @override
  final String wireName = 'PlayerStatus';

  @override
  Object serialize(Serializers serializers, PlayerStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PlayerStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PlayerStatus.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
