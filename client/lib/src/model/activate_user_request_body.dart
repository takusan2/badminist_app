//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'activate_user_request_body.g.dart';

/// ActivateUserRequestBody
///
/// Properties:
/// * [email] 
/// * [confirmPass] 
@BuiltValue()
abstract class ActivateUserRequestBody implements Built<ActivateUserRequestBody, ActivateUserRequestBodyBuilder> {
  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'confirmPass')
  String? get confirmPass;

  ActivateUserRequestBody._();

  factory ActivateUserRequestBody([void updates(ActivateUserRequestBodyBuilder b)]) = _$ActivateUserRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActivateUserRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ActivateUserRequestBody> get serializer => _$ActivateUserRequestBodySerializer();
}

class _$ActivateUserRequestBodySerializer implements PrimitiveSerializer<ActivateUserRequestBody> {
  @override
  final Iterable<Type> types = const [ActivateUserRequestBody, _$ActivateUserRequestBody];

  @override
  final String wireName = r'ActivateUserRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ActivateUserRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.confirmPass != null) {
      yield r'confirmPass';
      yield serializers.serialize(
        object.confirmPass,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ActivateUserRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ActivateUserRequestBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'confirmPass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.confirmPass = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ActivateUserRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivateUserRequestBodyBuilder();
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

