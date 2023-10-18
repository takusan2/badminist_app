//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/role.dart';
import 'package:openapi/src/model/user_read_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'member_read_model.g.dart';

/// MemberReadModel
///
/// Properties:
/// * [memberId] 
/// * [user] 
/// * [role] 
@BuiltValue()
abstract class MemberReadModel implements Built<MemberReadModel, MemberReadModelBuilder> {
  @BuiltValueField(wireName: r'member_id')
  String get memberId;

  @BuiltValueField(wireName: r'user')
  UserReadModel get user;

  @BuiltValueField(wireName: r'role')
  Role get role;
  // enum roleEnum {  admin,  staff,  member,  };

  MemberReadModel._();

  factory MemberReadModel([void updates(MemberReadModelBuilder b)]) = _$MemberReadModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MemberReadModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MemberReadModel> get serializer => _$MemberReadModelSerializer();
}

class _$MemberReadModelSerializer implements PrimitiveSerializer<MemberReadModel> {
  @override
  final Iterable<Type> types = const [MemberReadModel, _$MemberReadModel];

  @override
  final String wireName = r'MemberReadModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MemberReadModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'member_id';
    yield serializers.serialize(
      object.memberId,
      specifiedType: const FullType(String),
    );
    yield r'user';
    yield serializers.serialize(
      object.user,
      specifiedType: const FullType(UserReadModel),
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
    MemberReadModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MemberReadModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'member_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.memberId = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserReadModel),
          ) as UserReadModel;
          result.user.replace(valueDes);
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
  MemberReadModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MemberReadModelBuilder();
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

