//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Match {
  /// Returns a new [Match] instance.
  Match({
    this.left,
    this.right,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Team? left;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Team? right;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Match &&
    other.left == left &&
    other.right == right;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (left == null ? 0 : left!.hashCode) +
    (right == null ? 0 : right!.hashCode);

  @override
  String toString() => 'Match[left=$left, right=$right]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.left != null) {
      json[r'left'] = this.left;
    } else {
      json[r'left'] = null;
    }
    if (this.right != null) {
      json[r'right'] = this.right;
    } else {
      json[r'right'] = null;
    }
    return json;
  }

  /// Returns a new [Match] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Match? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Match[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Match[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Match(
        left: Team.fromJson(json[r'left']),
        right: Team.fromJson(json[r'right']),
      );
    }
    return null;
  }

  static List<Match> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Match>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Match.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Match> mapFromJson(dynamic json) {
    final map = <String, Match>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Match.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Match-objects as value to a dart map
  static Map<String, List<Match>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Match>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Match.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

