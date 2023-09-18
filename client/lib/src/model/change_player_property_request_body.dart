//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/player_gender.dart';
import 'package:openapi/src/model/player_level.dart';
import 'package:openapi/src/model/player_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'change_player_property_request_body.g.dart';

/// ChangePlayerPropertyRequestBody
///
/// Properties:
/// * [communityId] 
/// * [playerId] 
/// * [name] 
/// * [gender] 
/// * [age] 
/// * [level] 
/// * [numGames] 
/// * [status] 
@BuiltValue()
abstract class ChangePlayerPropertyRequestBody implements Built<ChangePlayerPropertyRequestBody, ChangePlayerPropertyRequestBodyBuilder> {
  @BuiltValueField(wireName: r'community_id')
  String? get communityId;

  @BuiltValueField(wireName: r'player_id')
  String? get playerId;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'gender')
  PlayerGender? get gender;
  // enum genderEnum {  male,  female,  unknown,  };

  @BuiltValueField(wireName: r'age')
  int? get age;

  @BuiltValueField(wireName: r'level')
  PlayerLevel? get level;
  // enum levelEnum {  beginner,  intermediate,  advanced,  };

  @BuiltValueField(wireName: r'num_games')
  int? get numGames;

  @BuiltValueField(wireName: r'status')
  PlayerStatus? get status;
  // enum statusEnum {  attend,  break,  absence,  };

  ChangePlayerPropertyRequestBody._();

  factory ChangePlayerPropertyRequestBody([void updates(ChangePlayerPropertyRequestBodyBuilder b)]) = _$ChangePlayerPropertyRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChangePlayerPropertyRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChangePlayerPropertyRequestBody> get serializer => _$ChangePlayerPropertyRequestBodySerializer();
}

class _$ChangePlayerPropertyRequestBodySerializer implements PrimitiveSerializer<ChangePlayerPropertyRequestBody> {
  @override
  final Iterable<Type> types = const [ChangePlayerPropertyRequestBody, _$ChangePlayerPropertyRequestBody];

  @override
  final String wireName = r'ChangePlayerPropertyRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChangePlayerPropertyRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.communityId != null) {
      yield r'community_id';
      yield serializers.serialize(
        object.communityId,
        specifiedType: const FullType(String),
      );
    }
    if (object.playerId != null) {
      yield r'player_id';
      yield serializers.serialize(
        object.playerId,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.gender != null) {
      yield r'gender';
      yield serializers.serialize(
        object.gender,
        specifiedType: const FullType(PlayerGender),
      );
    }
    if (object.age != null) {
      yield r'age';
      yield serializers.serialize(
        object.age,
        specifiedType: const FullType(int),
      );
    }
    if (object.level != null) {
      yield r'level';
      yield serializers.serialize(
        object.level,
        specifiedType: const FullType(PlayerLevel),
      );
    }
    if (object.numGames != null) {
      yield r'num_games';
      yield serializers.serialize(
        object.numGames,
        specifiedType: const FullType(int),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(PlayerStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChangePlayerPropertyRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChangePlayerPropertyRequestBodyBuilder result,
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
        case r'player_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.playerId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'gender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PlayerGender),
          ) as PlayerGender;
          result.gender = valueDes;
          break;
        case r'age':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.age = valueDes;
          break;
        case r'level':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PlayerLevel),
          ) as PlayerLevel;
          result.level = valueDes;
          break;
        case r'num_games':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numGames = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PlayerStatus),
          ) as PlayerStatus;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChangePlayerPropertyRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChangePlayerPropertyRequestBodyBuilder();
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

