//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'player_gender.g.dart';

class PlayerGender extends EnumClass {

  @BuiltValueEnumConst(wireName: r'male')
  static const PlayerGender male = _$male;
  @BuiltValueEnumConst(wireName: r'female')
  static const PlayerGender female = _$female;
  @BuiltValueEnumConst(wireName: r'unknown')
  static const PlayerGender unknown = _$unknown;

  static Serializer<PlayerGender> get serializer => _$playerGenderSerializer;

  const PlayerGender._(String name): super(name);

  static BuiltSet<PlayerGender> get values => _$values;
  static PlayerGender valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PlayerGenderMixin = Object with _$PlayerGenderMixin;

