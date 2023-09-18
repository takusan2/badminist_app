// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_gender.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PlayerGender _$male = const PlayerGender._('male');
const PlayerGender _$female = const PlayerGender._('female');
const PlayerGender _$unknown = const PlayerGender._('unknown');

PlayerGender _$valueOf(String name) {
  switch (name) {
    case 'male':
      return _$male;
    case 'female':
      return _$female;
    case 'unknown':
      return _$unknown;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PlayerGender> _$values =
    new BuiltSet<PlayerGender>(const <PlayerGender>[
  _$male,
  _$female,
  _$unknown,
]);

class _$PlayerGenderMeta {
  const _$PlayerGenderMeta();
  PlayerGender get male => _$male;
  PlayerGender get female => _$female;
  PlayerGender get unknown => _$unknown;
  PlayerGender valueOf(String name) => _$valueOf(name);
  BuiltSet<PlayerGender> get values => _$values;
}

abstract class _$PlayerGenderMixin {
  // ignore: non_constant_identifier_names
  _$PlayerGenderMeta get PlayerGender => const _$PlayerGenderMeta();
}

Serializer<PlayerGender> _$playerGenderSerializer =
    new _$PlayerGenderSerializer();

class _$PlayerGenderSerializer implements PrimitiveSerializer<PlayerGender> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'male': 'male',
    'female': 'female',
    'unknown': 'unknown',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'male': 'male',
    'female': 'female',
    'unknown': 'unknown',
  };

  @override
  final Iterable<Type> types = const <Type>[PlayerGender];
  @override
  final String wireName = 'PlayerGender';

  @override
  Object serialize(Serializers serializers, PlayerGender object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PlayerGender deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PlayerGender.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
