//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/member_read_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'member_list.g.dart';

/// MemberList
///
/// Properties:
/// * [members] 
@BuiltValue()
abstract class MemberList implements Built<MemberList, MemberListBuilder> {
  @BuiltValueField(wireName: r'members')
  BuiltList<MemberReadModel>? get members;

  MemberList._();

  factory MemberList([void updates(MemberListBuilder b)]) = _$MemberList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MemberListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MemberList> get serializer => _$MemberListSerializer();
}

class _$MemberListSerializer implements PrimitiveSerializer<MemberList> {
  @override
  final Iterable<Type> types = const [MemberList, _$MemberList];

  @override
  final String wireName = r'MemberList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MemberList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.members != null) {
      yield r'members';
      yield serializers.serialize(
        object.members,
        specifiedType: const FullType(BuiltList, [FullType(MemberReadModel)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MemberList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MemberListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'members':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MemberReadModel)]),
          ) as BuiltList<MemberReadModel>;
          result.members.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MemberList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MemberListBuilder();
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

