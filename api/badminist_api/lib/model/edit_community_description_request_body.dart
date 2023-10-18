//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EditCommunityDescriptionRequestBody {
  /// Returns a new [EditCommunityDescriptionRequestBody] instance.
  EditCommunityDescriptionRequestBody({
    this.communityId,
    this.description,
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
  String? description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EditCommunityDescriptionRequestBody &&
     other.communityId == communityId &&
     other.description == description;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (communityId == null ? 0 : communityId!.hashCode) +
    (description == null ? 0 : description!.hashCode);

  @override
  String toString() => 'EditCommunityDescriptionRequestBody[communityId=$communityId, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.communityId != null) {
      json[r'community_id'] = this.communityId;
    } else {
      json[r'community_id'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    return json;
  }

  /// Returns a new [EditCommunityDescriptionRequestBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EditCommunityDescriptionRequestBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EditCommunityDescriptionRequestBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EditCommunityDescriptionRequestBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EditCommunityDescriptionRequestBody(
        communityId: mapValueOfType<String>(json, r'community_id'),
        description: mapValueOfType<String>(json, r'description'),
      );
    }
    return null;
  }

  static List<EditCommunityDescriptionRequestBody> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EditCommunityDescriptionRequestBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EditCommunityDescriptionRequestBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EditCommunityDescriptionRequestBody> mapFromJson(dynamic json) {
    final map = <String, EditCommunityDescriptionRequestBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EditCommunityDescriptionRequestBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EditCommunityDescriptionRequestBody-objects as value to a dart map
  static Map<String, List<EditCommunityDescriptionRequestBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EditCommunityDescriptionRequestBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EditCommunityDescriptionRequestBody.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

