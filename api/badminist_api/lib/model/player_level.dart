//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PlayerLevel {
  /// Instantiate a new enum with the provided [value].
  const PlayerLevel._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const beginner = PlayerLevel._(r'beginner');
  static const intermediate = PlayerLevel._(r'intermediate');
  static const advanced = PlayerLevel._(r'advanced');

  /// List of all possible values in this [enum][PlayerLevel].
  static const values = <PlayerLevel>[
    beginner,
    intermediate,
    advanced,
  ];

  static PlayerLevel? fromJson(dynamic value) => PlayerLevelTypeTransformer().decode(value);

  static List<PlayerLevel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlayerLevel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlayerLevel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PlayerLevel] to String,
/// and [decode] dynamic data back to [PlayerLevel].
class PlayerLevelTypeTransformer {
  factory PlayerLevelTypeTransformer() => _instance ??= const PlayerLevelTypeTransformer._();

  const PlayerLevelTypeTransformer._();

  String encode(PlayerLevel data) => data.value;

  /// Decodes a [dynamic value][data] to a PlayerLevel.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PlayerLevel? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'beginner': return PlayerLevel.beginner;
        case r'intermediate': return PlayerLevel.intermediate;
        case r'advanced': return PlayerLevel.advanced;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PlayerLevelTypeTransformer] instance.
  static PlayerLevelTypeTransformer? _instance;
}

