//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/match.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'match_combination.g.dart';

/// MatchCombination
///
/// Properties:
/// * [matches] 
@BuiltValue()
abstract class MatchCombination implements Built<MatchCombination, MatchCombinationBuilder> {
  @BuiltValueField(wireName: r'matches')
  BuiltList<Match> get matches;

  MatchCombination._();

  factory MatchCombination([void updates(MatchCombinationBuilder b)]) = _$MatchCombination;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MatchCombinationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MatchCombination> get serializer => _$MatchCombinationSerializer();
}

class _$MatchCombinationSerializer implements PrimitiveSerializer<MatchCombination> {
  @override
  final Iterable<Type> types = const [MatchCombination, _$MatchCombination];

  @override
  final String wireName = r'MatchCombination';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MatchCombination object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'matches';
    yield serializers.serialize(
      object.matches,
      specifiedType: const FullType(BuiltList, [FullType(Match)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MatchCombination object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MatchCombinationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'matches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Match)]),
          ) as BuiltList<Match>;
          result.matches.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MatchCombination deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MatchCombinationBuilder();
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

