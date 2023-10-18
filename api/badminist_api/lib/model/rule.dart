//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class Rule {
  /// Instantiate a new enum with the provided [value].
  const Rule._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const singles = Rule._(r'singles');
  static const doubles = Rule._(r'doubles');

  /// List of all possible values in this [enum][Rule].
  static const values = <Rule>[
    singles,
    doubles,
  ];

  static Rule? fromJson(dynamic value) => RuleTypeTransformer().decode(value);

  static List<Rule> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Rule>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Rule.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Rule] to String,
/// and [decode] dynamic data back to [Rule].
class RuleTypeTransformer {
  factory RuleTypeTransformer() => _instance ??= const RuleTypeTransformer._();

  const RuleTypeTransformer._();

  String encode(Rule data) => data.value;

  /// Decodes a [dynamic value][data] to a Rule.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Rule? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'singles': return Rule.singles;
        case r'doubles': return Rule.doubles;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RuleTypeTransformer] instance.
  static RuleTypeTransformer? _instance;
}

