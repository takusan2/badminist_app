//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rename_community_request_body.g.dart';

/// RenameCommunityRequestBody
///
/// Properties:
/// * [name] 
@BuiltValue()
abstract class RenameCommunityRequestBody implements Built<RenameCommunityRequestBody, RenameCommunityRequestBodyBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  RenameCommunityRequestBody._();

  factory RenameCommunityRequestBody([void updates(RenameCommunityRequestBodyBuilder b)]) = _$RenameCommunityRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RenameCommunityRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RenameCommunityRequestBody> get serializer => _$RenameCommunityRequestBodySerializer();
}

class _$RenameCommunityRequestBodySerializer implements PrimitiveSerializer<RenameCommunityRequestBody> {
  @override
  final Iterable<Type> types = const [RenameCommunityRequestBody, _$RenameCommunityRequestBody];

  @override
  final String wireName = r'RenameCommunityRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RenameCommunityRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RenameCommunityRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RenameCommunityRequestBodyBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RenameCommunityRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RenameCommunityRequestBodyBuilder();
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

