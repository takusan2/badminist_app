//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_community_request_body.g.dart';

/// DeleteCommunityRequestBody
///
/// Properties:
/// * [communityId] 
@BuiltValue()
abstract class DeleteCommunityRequestBody implements Built<DeleteCommunityRequestBody, DeleteCommunityRequestBodyBuilder> {
  @BuiltValueField(wireName: r'community_id')
  String get communityId;

  DeleteCommunityRequestBody._();

  factory DeleteCommunityRequestBody([void updates(DeleteCommunityRequestBodyBuilder b)]) = _$DeleteCommunityRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeleteCommunityRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeleteCommunityRequestBody> get serializer => _$DeleteCommunityRequestBodySerializer();
}

class _$DeleteCommunityRequestBodySerializer implements PrimitiveSerializer<DeleteCommunityRequestBody> {
  @override
  final Iterable<Type> types = const [DeleteCommunityRequestBody, _$DeleteCommunityRequestBody];

  @override
  final String wireName = r'DeleteCommunityRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeleteCommunityRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'community_id';
    yield serializers.serialize(
      object.communityId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DeleteCommunityRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeleteCommunityRequestBodyBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeleteCommunityRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteCommunityRequestBodyBuilder();
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

