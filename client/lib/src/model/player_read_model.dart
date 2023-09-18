//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/player_gender.dart';
import 'package:openapi/src/model/player_level.dart';
import 'package:openapi/src/model/player_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'player_read_model.g.dart';

/// PlayerReadModel
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [gender] 
/// * [age] 
/// * [level] 
/// * [numGames] 
/// * [status] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class PlayerReadModel implements Built<PlayerReadModel, PlayerReadModelBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

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

  @BuiltValueField(wireName: r'created_at')
  String? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  String? get updatedAt;

  PlayerReadModel._();

  factory PlayerReadModel([void updates(PlayerReadModelBuilder b)]) = _$PlayerReadModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlayerReadModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlayerReadModel> get serializer => _$PlayerReadModelSerializer();
}

class _$PlayerReadModelSerializer implements PrimitiveSerializer<PlayerReadModel> {
  @override
  final Iterable<Type> types = const [PlayerReadModel, _$PlayerReadModel];

  @override
  final String wireName = r'PlayerReadModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlayerReadModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
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
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.updatedAt != null) {
      yield r'updated_at';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlayerReadModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PlayerReadModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
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
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlayerReadModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlayerReadModelBuilder();
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

