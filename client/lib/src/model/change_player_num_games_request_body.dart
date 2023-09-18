//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'change_player_num_games_request_body.g.dart';

/// ChangePlayerNumGamesRequestBody
///
/// Properties:
/// * [communityId] 
/// * [playerId] 
/// * [numGames] 
@BuiltValue()
abstract class ChangePlayerNumGamesRequestBody implements Built<ChangePlayerNumGamesRequestBody, ChangePlayerNumGamesRequestBodyBuilder> {
  @BuiltValueField(wireName: r'community_id')
  String? get communityId;

  @BuiltValueField(wireName: r'player_id')
  String? get playerId;

  @BuiltValueField(wireName: r'num_games')
  int? get numGames;

  ChangePlayerNumGamesRequestBody._();

  factory ChangePlayerNumGamesRequestBody([void updates(ChangePlayerNumGamesRequestBodyBuilder b)]) = _$ChangePlayerNumGamesRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChangePlayerNumGamesRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChangePlayerNumGamesRequestBody> get serializer => _$ChangePlayerNumGamesRequestBodySerializer();
}

class _$ChangePlayerNumGamesRequestBodySerializer implements PrimitiveSerializer<ChangePlayerNumGamesRequestBody> {
  @override
  final Iterable<Type> types = const [ChangePlayerNumGamesRequestBody, _$ChangePlayerNumGamesRequestBody];

  @override
  final String wireName = r'ChangePlayerNumGamesRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChangePlayerNumGamesRequestBody object, {
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
    if (object.numGames != null) {
      yield r'num_games';
      yield serializers.serialize(
        object.numGames,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChangePlayerNumGamesRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChangePlayerNumGamesRequestBodyBuilder result,
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
        case r'num_games':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numGames = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChangePlayerNumGamesRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChangePlayerNumGamesRequestBodyBuilder();
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

