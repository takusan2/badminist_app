//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/community_read_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'community_list.g.dart';

/// CommunityList
///
/// Properties:
/// * [communities] 
@BuiltValue()
abstract class CommunityList implements Built<CommunityList, CommunityListBuilder> {
  @BuiltValueField(wireName: r'communities')
  BuiltList<CommunityReadModel>? get communities;

  CommunityList._();

  factory CommunityList([void updates(CommunityListBuilder b)]) = _$CommunityList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CommunityListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CommunityList> get serializer => _$CommunityListSerializer();
}

class _$CommunityListSerializer implements PrimitiveSerializer<CommunityList> {
  @override
  final Iterable<Type> types = const [CommunityList, _$CommunityList];

  @override
  final String wireName = r'CommunityList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CommunityList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.communities != null) {
      yield r'communities';
      yield serializers.serialize(
        object.communities,
        specifiedType: const FullType(BuiltList, [FullType(CommunityReadModel)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CommunityList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CommunityListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'communities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CommunityReadModel)]),
          ) as BuiltList<CommunityReadModel>;
          result.communities.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CommunityList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CommunityListBuilder();
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

