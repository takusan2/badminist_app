//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ChangePlayerProperty {
  /// Returns a new [ChangePlayerProperty] instance.
  ChangePlayerProperty({
    this.communityId,
    this.playerId,
    this.name,
    this.gender,
    this.age,
    this.level,
    this.numGames,
    this.status,
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
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PlayerGender? gender;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? age;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PlayerLevel? level;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numGames;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PlayerStatus? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChangePlayerProperty &&
    other.communityId == communityId &&
    other.playerId == playerId &&
    other.name == name &&
    other.gender == gender &&
    other.age == age &&
    other.level == level &&
    other.numGames == numGames &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (communityId == null ? 0 : communityId!.hashCode) +
    (playerId == null ? 0 : playerId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (gender == null ? 0 : gender!.hashCode) +
    (age == null ? 0 : age!.hashCode) +
    (level == null ? 0 : level!.hashCode) +
    (numGames == null ? 0 : numGames!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'ChangePlayerProperty[communityId=$communityId, playerId=$playerId, name=$name, gender=$gender, age=$age, level=$level, numGames=$numGames, status=$status]';

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
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.gender != null) {
      json[r'gender'] = this.gender;
    } else {
      json[r'gender'] = null;
    }
    if (this.age != null) {
      json[r'age'] = this.age;
    } else {
      json[r'age'] = null;
    }
    if (this.level != null) {
      json[r'level'] = this.level;
    } else {
      json[r'level'] = null;
    }
    if (this.numGames != null) {
      json[r'num_games'] = this.numGames;
    } else {
      json[r'num_games'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [ChangePlayerProperty] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChangePlayerProperty? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChangePlayerProperty[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChangePlayerProperty[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChangePlayerProperty(
        communityId: mapValueOfType<String>(json, r'community_id'),
        playerId: mapValueOfType<String>(json, r'player_id'),
        name: mapValueOfType<String>(json, r'name'),
        gender: PlayerGender.fromJson(json[r'gender']),
        age: mapValueOfType<int>(json, r'age'),
        level: PlayerLevel.fromJson(json[r'level']),
        numGames: mapValueOfType<int>(json, r'num_games'),
        status: PlayerStatus.fromJson(json[r'status']),
      );
    }
    return null;
  }

  static List<ChangePlayerProperty> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChangePlayerProperty>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChangePlayerProperty.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChangePlayerProperty> mapFromJson(dynamic json) {
    final map = <String, ChangePlayerProperty>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChangePlayerProperty.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChangePlayerProperty-objects as value to a dart map
  static Map<String, List<ChangePlayerProperty>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChangePlayerProperty>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChangePlayerProperty.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

