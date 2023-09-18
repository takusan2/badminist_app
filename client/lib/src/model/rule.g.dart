// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Rule _$singles = const Rule._('singles');
const Rule _$doubles = const Rule._('doubles');

Rule _$valueOf(String name) {
  switch (name) {
    case 'singles':
      return _$singles;
    case 'doubles':
      return _$doubles;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Rule> _$values = new BuiltSet<Rule>(const <Rule>[
  _$singles,
  _$doubles,
]);

class _$RuleMeta {
  const _$RuleMeta();
  Rule get singles => _$singles;
  Rule get doubles => _$doubles;
  Rule valueOf(String name) => _$valueOf(name);
  BuiltSet<Rule> get values => _$values;
}

abstract class _$RuleMixin {
  // ignore: non_constant_identifier_names
  _$RuleMeta get Rule => const _$RuleMeta();
}

Serializer<Rule> _$ruleSerializer = new _$RuleSerializer();

class _$RuleSerializer implements PrimitiveSerializer<Rule> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'singles': 'singles',
    'doubles': 'doubles',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'singles': 'singles',
    'doubles': 'doubles',
  };

  @override
  final Iterable<Type> types = const <Type>[Rule];
  @override
  final String wireName = 'Rule';

  @override
  Object serialize(Serializers serializers, Rule object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Rule deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Rule.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
