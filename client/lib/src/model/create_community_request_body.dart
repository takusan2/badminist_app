//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_community_request_body.g.dart';

/// CreateCommunityRequestBody
///
/// Properties:
/// * [name] 
/// * [description] 
@BuiltValue()
abstract class CreateCommunityRequestBody implements Built<CreateCommunityRequestBody, CreateCommunityRequestBodyBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  CreateCommunityRequestBody._();

  factory CreateCommunityRequestBody([void updates(CreateCommunityRequestBodyBuilder b)]) = _$CreateCommunityRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateCommunityRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateCommunityRequestBody> get serializer => _$CreateCommunityRequestBodySerializer();
}

class _$CreateCommunityRequestBodySerializer implements PrimitiveSerializer<CreateCommunityRequestBody> {
  @override
  final Iterable<Type> types = const [CreateCommunityRequestBody, _$CreateCommunityRequestBody];

  @override
  final String wireName = r'CreateCommunityRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateCommunityRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateCommunityRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateCommunityRequestBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateCommunityRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCommunityRequestBodyBuilder();
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

