//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reset_player_num_games_request_body.g.dart';

/// ResetPlayerNumGamesRequestBody
///
/// Properties:
/// * [communityId] 
/// * [playerId] 
@BuiltValue()
abstract class ResetPlayerNumGamesRequestBody implements Built<ResetPlayerNumGamesRequestBody, ResetPlayerNumGamesRequestBodyBuilder> {
  @BuiltValueField(wireName: r'community_id')
  String? get communityId;

  @BuiltValueField(wireName: r'player_id')
  String? get playerId;

  ResetPlayerNumGamesRequestBody._();

  factory ResetPlayerNumGamesRequestBody([void updates(ResetPlayerNumGamesRequestBodyBuilder b)]) = _$ResetPlayerNumGamesRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResetPlayerNumGamesRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResetPlayerNumGamesRequestBody> get serializer => _$ResetPlayerNumGamesRequestBodySerializer();
}

class _$ResetPlayerNumGamesRequestBodySerializer implements PrimitiveSerializer<ResetPlayerNumGamesRequestBody> {
  @override
  final Iterable<Type> types = const [ResetPlayerNumGamesRequestBody, _$ResetPlayerNumGamesRequestBody];

  @override
  final String wireName = r'ResetPlayerNumGamesRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResetPlayerNumGamesRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.communityId != null) {
      yield r'community_id';
      yield serializers.serialize(
        object.communityId,
        specifiedType: const FullType(String),
      );
    }
    if (object.playerId != null) {
      yield r'player_id';
      yield serializers.serialize(
        object.playerId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResetPlayerNumGamesRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResetPlayerNumGamesRequestBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'community_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.communityId = valueDes;
          break;
        case r'player_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.playerId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResetPlayerNumGamesRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResetPlayerNumGamesRequestBodyBuilder();
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

