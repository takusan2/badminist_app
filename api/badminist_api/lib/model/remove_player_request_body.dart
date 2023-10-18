//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RemovePlayerRequestBody {
  /// Returns a new [RemovePlayerRequestBody] instance.
  RemovePlayerRequestBody({
    this.communityId,
    this.playerId,
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

  @override
  bool operator ==(Object other) => identical(this, other) || other is RemovePlayerRequestBody &&
     other.communityId == communityId &&
     other.playerId == playerId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (communityId == null ? 0 : communityId!.hashCode) +
    (playerId == null ? 0 : playerId!.hashCode);

  @override
  String toString() => 'RemovePlayerRequestBody[communityId=$communityId, playerId=$playerId]';

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
    return json;
  }

  /// Returns a new [RemovePlayerRequestBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RemovePlayerRequestBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RemovePlayerRequestBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RemovePlayerRequestBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RemovePlayerRequestBody(
        communityId: mapValueOfType<String>(json, r'community_id'),
        playerId: mapValueOfType<String>(json, r'player_id'),
      );
    }
    return null;
  }

  static List<RemovePlayerRequestBody> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RemovePlayerRequestBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RemovePlayerRequestBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RemovePlayerRequestBody> mapFromJson(dynamic json) {
    final map = <String, RemovePlayerRequestBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RemovePlayerRequestBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RemovePlayerRequestBody-objects as value to a dart map
  static Map<String, List<RemovePlayerRequestBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RemovePlayerRequestBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RemovePlayerRequestBody.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

