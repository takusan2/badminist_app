// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UserStatus _$inactive = const UserStatus._('inactive');
const UserStatus _$active = const UserStatus._('active');

UserStatus _$valueOf(String name) {
  switch (name) {
    case 'inactive':
      return _$inactive;
    case 'active':
      return _$active;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<UserStatus> _$values =
    new BuiltSet<UserStatus>(const <UserStatus>[
  _$inactive,
  _$active,
]);

class _$UserStatusMeta {
  const _$UserStatusMeta();
  UserStatus get inactive => _$inactive;
  UserStatus get active => _$active;
  UserStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<UserStatus> get values => _$values;
}

abstract class _$UserStatusMixin {
  // ignore: non_constant_identifier_names
  _$UserStatusMeta get UserStatus => const _$UserStatusMeta();
}

Serializer<UserStatus> _$userStatusSerializer = new _$UserStatusSerializer();

class _$UserStatusSerializer implements PrimitiveSerializer<UserStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'inactive': 'inactive',
    'active': 'active',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'inactive': 'inactive',
    'active': 'active',
  };

  @override
  final Iterable<Type> types = const <Type>[UserStatus];
  @override
  final String wireName = 'UserStatus';

  @override
  Object serialize(Serializers serializers, UserStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UserStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UserStatus.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
