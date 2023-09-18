//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/player_read_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'team.g.dart';

/// Team
///
/// Properties:
/// * [players] 
@BuiltValue()
abstract class Team implements Built<Team, TeamBuilder> {
  @BuiltValueField(wireName: r'players')
  BuiltList<PlayerReadModel>? get players;

  Team._();

  factory Team([void updates(TeamBuilder b)]) = _$Team;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TeamBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Team> get serializer => _$TeamSerializer();
}

class _$TeamSerializer implements PrimitiveSerializer<Team> {
  @override
  final Iterable<Type> types = const [Team, _$Team];

  @override
  final String wireName = r'Team';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Team object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.players != null) {
      yield r'players';
      yield serializers.serialize(
        object.players,
        specifiedType: const FullType(BuiltList, [FullType(PlayerReadModel)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Team object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TeamBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'players':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PlayerReadModel)]),
          ) as BuiltList<PlayerReadModel>;
          result.players.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Team deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TeamBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

