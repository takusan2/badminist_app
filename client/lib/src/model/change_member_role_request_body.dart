//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/role.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'change_member_role_request_body.g.dart';

/// ChangeMemberRoleRequestBody
///
/// Properties:
/// * [communityId] 
/// * [userId] 
/// * [role] 
@BuiltValue()
abstract class ChangeMemberRoleRequestBody implements Built<ChangeMemberRoleRequestBody, ChangeMemberRoleRequestBodyBuilder> {
  @BuiltValueField(wireName: r'community_id')
  String? get communityId;

  @BuiltValueField(wireName: r'user_id')
  String? get userId;

  @BuiltValueField(wireName: r'role')
  Role? get role;
  // enum roleEnum {  admin,  staff,  member,  };

  ChangeMemberRoleRequestBody._();

  factory ChangeMemberRoleRequestBody([void updates(ChangeMemberRoleRequestBodyBuilder b)]) = _$ChangeMemberRoleRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChangeMemberRoleRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChangeMemberRoleRequestBody> get serializer => _$ChangeMemberRoleRequestBodySerializer();
}

class _$ChangeMemberRoleRequestBodySerializer implements PrimitiveSerializer<ChangeMemberRoleRequestBody> {
  @override
  final Iterable<Type> types = const [ChangeMemberRoleRequestBody, _$ChangeMemberRoleRequestBody];

  @override
  final String wireName = r'ChangeMemberRoleRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChangeMemberRoleRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.communityId != null) {
      yield r'community_id';
      yield serializers.serialize(
        object.communityId,
        specifiedType: const FullType(String),
      );
    }
    if (object.userId != null) {
      yield r'user_id';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      );
    }
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(Role),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChangeMemberRoleRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChangeMemberRoleRequestBodyBuilder result,
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
  ChangeMemberRoleRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChangeMemberRoleRequestBodyBuilder();
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

