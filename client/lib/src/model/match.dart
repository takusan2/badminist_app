//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/team.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'match.g.dart';

/// Match
///
/// Properties:
/// * [left] 
/// * [right] 
@BuiltValue()
abstract class Match implements Built<Match, MatchBuilder> {
  @BuiltValueField(wireName: r'left')
  Team get left;

  @BuiltValueField(wireName: r'right')
  Team get right;

  Match._();

  factory Match([void updates(MatchBuilder b)]) = _$Match;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Match> get serializer => _$MatchSerializer();
}

class _$MatchSerializer implements PrimitiveSerializer<Match> {
  @override
  final Iterable<Type> types = const [Match, _$Match];

  @override
  final String wireName = r'Match';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Match object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'left';
    yield serializers.serialize(
      object.left,
      specifiedType: const FullType(Team),
    );
    yield r'right';
    yield serializers.serialize(
      object.right,
      specifiedType: const FullType(Team),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Match object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'left':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Team),
          ) as Team;
          result.left.replace(valueDes);
          break;
        case r'right':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Team),
          ) as Team;
          result.right.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Match deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MatchBuilder();
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

