// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Role _$admin = const Role._('admin');
const Role _$staff = const Role._('staff');
const Role _$member = const Role._('member');

Role _$valueOf(String name) {
  switch (name) {
    case 'admin':
      return _$admin;
    case 'staff':
      return _$staff;
    case 'member':
      return _$member;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Role> _$values = new BuiltSet<Role>(const <Role>[
  _$admin,
  _$staff,
  _$member,
]);

class _$RoleMeta {
  const _$RoleMeta();
  Role get admin => _$admin;
  Role get staff => _$staff;
  Role get member => _$member;
  Role valueOf(String name) => _$valueOf(name);
  BuiltSet<Role> get values => _$values;
}

abstract class _$RoleMixin {
  // ignore: non_constant_identifier_names
  _$RoleMeta get Role => const _$RoleMeta();
}

Serializer<Role> _$roleSerializer = new _$RoleSerializer();

class _$RoleSerializer implements PrimitiveSerializer<Role> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'admin': 'admin',
    'staff': 'staff',
    'member': 'member',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'admin': 'admin',
    'staff': 'staff',
    'member': 'member',
  };

  @override
  final Iterable<Type> types = const <Type>[Role];
  @override
  final String wireName = 'Role';

  @override
  Object serialize(Serializers serializers, Role object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Role deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Role.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
