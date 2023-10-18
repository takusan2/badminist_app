//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PlayerStatus {
  /// Instantiate a new enum with the provided [value].
  const PlayerStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const attend = PlayerStatus._(r'attend');
  static const break_ = PlayerStatus._(r'break');
  static const absence = PlayerStatus._(r'absence');

  /// List of all possible values in this [enum][PlayerStatus].
  static const values = <PlayerStatus>[
    attend,
    break_,
    absence,
  ];

  static PlayerStatus? fromJson(dynamic value) => PlayerStatusTypeTransformer().decode(value);

  static List<PlayerStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlayerStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlayerStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PlayerStatus] to String,
/// and [decode] dynamic data back to [PlayerStatus].
class PlayerStatusTypeTransformer {
  factory PlayerStatusTypeTransformer() => _instance ??= const PlayerStatusTypeTransformer._();

  const PlayerStatusTypeTransformer._();

  String encode(PlayerStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a PlayerStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PlayerStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'attend': return PlayerStatus.attend;
        case r'break': return PlayerStatus.break_;
        case r'absence': return PlayerStatus.absence;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PlayerStatusTypeTransformer] instance.
  static PlayerStatusTypeTransformer? _instance;
}

