//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'player_level.g.dart';

class PlayerLevel extends EnumClass {

  @BuiltValueEnumConst(wireName: r'beginner')
  static const PlayerLevel beginner = _$beginner;
  @BuiltValueEnumConst(wireName: r'intermediate')
  static const PlayerLevel intermediate = _$intermediate;
  @BuiltValueEnumConst(wireName: r'advanced')
  static const PlayerLevel advanced = _$advanced;

  static Serializer<PlayerLevel> get serializer => _$playerLevelSerializer;

  const PlayerLevel._(String name): super(name);

  static BuiltSet<PlayerLevel> get values => _$values;
  static PlayerLevel valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PlayerLevelMixin = Object with _$PlayerLevelMixin;

