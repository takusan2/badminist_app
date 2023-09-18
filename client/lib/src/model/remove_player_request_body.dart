//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'remove_player_request_body.g.dart';

/// RemovePlayerRequestBody
///
/// Properties:
/// * [communityId] 
/// * [playerId] 
@BuiltValue()
abstract class RemovePlayerRequestBody implements Built<RemovePlayerRequestBody, RemovePlayerRequestBodyBuilder> {
  @BuiltValueField(wireName: r'community_id')
  String? get communityId;

  @BuiltValueField(wireName: r'player_id')
  String? get playerId;

  RemovePlayerRequestBody._();

  factory RemovePlayerRequestBody([void updates(RemovePlayerRequestBodyBuilder b)]) = _$RemovePlayerRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RemovePlayerRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RemovePlayerRequestBody> get serializer => _$RemovePlayerRequestBodySerializer();
}

class _$RemovePlayerRequestBodySerializer implements PrimitiveSerializer<RemovePlayerRequestBody> {
  @override
  final Iterable<Type> types = const [RemovePlayerRequestBody, _$RemovePlayerRequestBody];

  @override
  final String wireName = r'RemovePlayerRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RemovePlayerRequestBody object, {
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
    RemovePlayerRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RemovePlayerRequestBodyBuilder result,
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
  RemovePlayerRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RemovePlayerRequestBodyBuilder();
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

