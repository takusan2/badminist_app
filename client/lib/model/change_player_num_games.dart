//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ChangePlayerNumGames {
  /// Returns a new [ChangePlayerNumGames] instance.
  ChangePlayerNumGames({
    this.communityId,
    this.playerId,
    this.numGames,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? communityId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? playerId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numGames;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChangePlayerNumGames &&
    other.communityId == communityId &&
    other.playerId == playerId &&
    other.numGames == numGames;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (communityId == null ? 0 : communityId!.hashCode) +
    (playerId == null ? 0 : playerId!.hashCode) +
    (numGames == null ? 0 : numGames!.hashCode);

  @override
  String toString() => 'ChangePlayerNumGames[communityId=$communityId, playerId=$playerId, numGames=$numGames]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.communityId != null) {
      json[r'community_id'] = this.communityId;
    } else {
      json[r'community_id'] = null;
    }
    if (this.playerId != null) {
      json[r'player_id'] = this.playerId;
    } else {
      json[r'player_id'] = null;
    }
    if (this.numGames != null) {
      json[r'num_games'] = this.numGames;
    } else {
      json[r'num_games'] = null;
    }
    return json;
  }

  /// Returns a new [ChangePlayerNumGames] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChangePlayerNumGames? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChangePlayerNumGames[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChangePlayerNumGames[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChangePlayerNumGames(
        communityId: mapValueOfType<String>(json, r'community_id'),
        playerId: mapValueOfType<String>(json, r'player_id'),
        numGames: mapValueOfType<int>(json, r'num_games'),
      );
    }
    return null;
  }

  static List<ChangePlayerNumGames> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChangePlayerNumGames>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChangePlayerNumGames.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChangePlayerNumGames> mapFromJson(dynamic json) {
    final map = <String, ChangePlayerNumGames>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChangePlayerNumGames.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChangePlayerNumGames-objects as value to a dart map
  static Map<String, List<ChangePlayerNumGames>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChangePlayerNumGames>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChangePlayerNumGames.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
