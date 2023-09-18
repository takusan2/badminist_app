//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/player_read_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'player_list.g.dart';

/// PlayerList
///
/// Properties:
/// * [players] 
@BuiltValue()
abstract class PlayerList implements Built<PlayerList, PlayerListBuilder> {
  @BuiltValueField(wireName: r'players')
  BuiltList<PlayerReadModel>? get players;

  PlayerList._();

  factory PlayerList([void updates(PlayerListBuilder b)]) = _$PlayerList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlayerListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlayerList> get serializer => _$PlayerListSerializer();
}

class _$PlayerListSerializer implements PrimitiveSerializer<PlayerList> {
  @override
  final Iterable<Type> types = const [PlayerList, _$PlayerList];

  @override
  final String wireName = r'PlayerList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlayerList object, {
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
    PlayerList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PlayerListBuilder result,
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
  PlayerList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlayerListBuilder();
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

