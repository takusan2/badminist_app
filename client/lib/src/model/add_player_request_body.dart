//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/player_gender.dart';
import 'package:openapi/src/model/player_level.dart';
import 'package:openapi/src/model/player_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_player_request_body.g.dart';

/// AddPlayerRequestBody
///
/// Properties:
/// * [name] 
/// * [gender] 
/// * [age] 
/// * [level] 
/// * [numGames] 
/// * [status] 
@BuiltValue()
abstract class AddPlayerRequestBody implements Built<AddPlayerRequestBody, AddPlayerRequestBodyBuilder> {
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

  AddPlayerRequestBody._();

  factory AddPlayerRequestBody([void updates(AddPlayerRequestBodyBuilder b)]) = _$AddPlayerRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddPlayerRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddPlayerRequestBody> get serializer => _$AddPlayerRequestBodySerializer();
}

class _$AddPlayerRequestBodySerializer implements PrimitiveSerializer<AddPlayerRequestBody> {
  @override
  final Iterable<Type> types = const [AddPlayerRequestBody, _$AddPlayerRequestBody];

  @override
  final String wireName = r'AddPlayerRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddPlayerRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    AddPlayerRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddPlayerRequestBodyBuilder result,
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
  AddPlayerRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddPlayerRequestBodyBuilder();
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

