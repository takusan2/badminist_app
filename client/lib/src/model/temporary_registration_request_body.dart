//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'temporary_registration_request_body.g.dart';

/// TemporaryRegistrationRequestBody
///
/// Properties:
/// * [name] 
/// * [email] 
/// * [password] 
@BuiltValue()
abstract class TemporaryRegistrationRequestBody implements Built<TemporaryRegistrationRequestBody, TemporaryRegistrationRequestBodyBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'password')
  String get password;

  TemporaryRegistrationRequestBody._();

  factory TemporaryRegistrationRequestBody([void updates(TemporaryRegistrationRequestBodyBuilder b)]) = _$TemporaryRegistrationRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TemporaryRegistrationRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TemporaryRegistrationRequestBody> get serializer => _$TemporaryRegistrationRequestBodySerializer();
}

class _$TemporaryRegistrationRequestBodySerializer implements PrimitiveSerializer<TemporaryRegistrationRequestBody> {
  @override
  final Iterable<Type> types = const [TemporaryRegistrationRequestBody, _$TemporaryRegistrationRequestBody];

  @override
  final String wireName = r'TemporaryRegistrationRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TemporaryRegistrationRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TemporaryRegistrationRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TemporaryRegistrationRequestBodyBuilder result,
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
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TemporaryRegistrationRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TemporaryRegistrationRequestBodyBuilder();
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

