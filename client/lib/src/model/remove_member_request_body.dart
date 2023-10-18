//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'remove_member_request_body.g.dart';

/// RemoveMemberRequestBody
///
/// Properties:
/// * [communityId] 
/// * [userId] 
@BuiltValue()
abstract class RemoveMemberRequestBody implements Built<RemoveMemberRequestBody, RemoveMemberRequestBodyBuilder> {
  @BuiltValueField(wireName: r'community_id')
  String get communityId;

  @BuiltValueField(wireName: r'user_id')
  String get userId;

  RemoveMemberRequestBody._();

  factory RemoveMemberRequestBody([void updates(RemoveMemberRequestBodyBuilder b)]) = _$RemoveMemberRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RemoveMemberRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RemoveMemberRequestBody> get serializer => _$RemoveMemberRequestBodySerializer();
}

class _$RemoveMemberRequestBodySerializer implements PrimitiveSerializer<RemoveMemberRequestBody> {
  @override
  final Iterable<Type> types = const [RemoveMemberRequestBody, _$RemoveMemberRequestBody];

  @override
  final String wireName = r'RemoveMemberRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RemoveMemberRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'community_id';
    yield serializers.serialize(
      object.communityId,
      specifiedType: const FullType(String),
    );
    yield r'user_id';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RemoveMemberRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RemoveMemberRequestBodyBuilder result,
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
        case r'user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RemoveMemberRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RemoveMemberRequestBodyBuilder();
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

