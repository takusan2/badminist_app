//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MemberReadModel {
  /// Returns a new [MemberReadModel] instance.
  MemberReadModel({
    this.memberId,
    this.user,
    this.role,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? memberId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserReadModel? user;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Role? role;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MemberReadModel &&
     other.memberId == memberId &&
     other.user == user &&
     other.role == role;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (memberId == null ? 0 : memberId!.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (role == null ? 0 : role!.hashCode);

  @override
  String toString() => 'MemberReadModel[memberId=$memberId, user=$user, role=$role]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.memberId != null) {
      json[r'member_id'] = this.memberId;
    } else {
      json[r'member_id'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
    return json;
  }

  /// Returns a new [MemberReadModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MemberReadModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MemberReadModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MemberReadModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MemberReadModel(
        memberId: mapValueOfType<String>(json, r'member_id'),
        user: UserReadModel.fromJson(json[r'user']),
        role: Role.fromJson(json[r'role']),
      );
    }
    return null;
  }

  static List<MemberReadModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MemberReadModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MemberReadModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MemberReadModel> mapFromJson(dynamic json) {
    final map = <String, MemberReadModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MemberReadModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MemberReadModel-objects as value to a dart map
  static Map<String, List<MemberReadModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MemberReadModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MemberReadModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

