//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PlayerGender {
  /// Instantiate a new enum with the provided [value].
  const PlayerGender._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const male = PlayerGender._(r'male');
  static const female = PlayerGender._(r'female');
  static const unknown = PlayerGender._(r'unknown');

  /// List of all possible values in this [enum][PlayerGender].
  static const values = <PlayerGender>[
    male,
    female,
    unknown,
  ];

  static PlayerGender? fromJson(dynamic value) => PlayerGenderTypeTransformer().decode(value);

  static List<PlayerGender> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlayerGender>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlayerGender.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PlayerGender] to String,
/// and [decode] dynamic data back to [PlayerGender].
class PlayerGenderTypeTransformer {
  factory PlayerGenderTypeTransformer() => _instance ??= const PlayerGenderTypeTransformer._();

  const PlayerGenderTypeTransformer._();

  String encode(PlayerGender data) => data.value;

  /// Decodes a [dynamic value][data] to a PlayerGender.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PlayerGender? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'male': return PlayerGender.male;
        case r'female': return PlayerGender.female;
        case r'unknown': return PlayerGender.unknown;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PlayerGenderTypeTransformer] instance.
  static PlayerGenderTypeTransformer? _instance;
}

