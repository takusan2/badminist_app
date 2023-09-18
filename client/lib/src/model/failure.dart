//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'failure.g.dart';

/// Failure
///
/// Properties:
/// * [message] 
@BuiltValue()
abstract class Failure implements Built<Failure, FailureBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  Failure._();

  factory Failure([void updates(FailureBuilder b)]) = _$Failure;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FailureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Failure> get serializer => _$FailureSerializer();
}

class _$FailureSerializer implements PrimitiveSerializer<Failure> {
  @override
  final Iterable<Type> types = const [Failure, _$Failure];

  @override
  final String wireName = r'Failure';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Failure object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Failure object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FailureBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Failure deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FailureBuilder();
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

