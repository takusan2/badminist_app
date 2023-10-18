//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/role.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_member_request_body.g.dart';

/// AddMemberRequestBody
///
/// Properties:
/// * [communityId] 
/// * [userId] 
/// * [role] 
@BuiltValue()
abstract class AddMemberRequestBody implements Built<AddMemberRequestBody, AddMemberRequestBodyBuilder> {
  @BuiltValueField(wireName: r'community_id')
  String get communityId;

  @BuiltValueField(wireName: r'user_id')
  String get userId;

  @BuiltValueField(wireName: r'role')
  Role get role;
  // enum roleEnum {  admin,  staff,  member,  };

  AddMemberRequestBody._();

  factory AddMemberRequestBody([void updates(AddMemberRequestBodyBuilder b)]) = _$AddMemberRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddMemberRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddMemberRequestBody> get serializer => _$AddMemberRequestBodySerializer();
}

class _$AddMemberRequestBodySerializer implements PrimitiveSerializer<AddMemberRequestBody> {
  @override
  final Iterable<Type> types = const [AddMemberRequestBody, _$AddMemberRequestBody];

  @override
  final String wireName = r'AddMemberRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddMemberRequestBody object, {
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
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(Role),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AddMemberRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddMemberRequestBodyBuilder result,
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
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Role),
          ) as Role;
          result.role = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AddMemberRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddMemberRequestBodyBuilder();
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

