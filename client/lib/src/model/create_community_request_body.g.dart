// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_community_request_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCommunityRequestBody extends CreateCommunityRequestBody {
  @override
  final String? name;
  @override
  final String? description;

  factory _$CreateCommunityRequestBody(
          [void Function(CreateCommunityRequestBodyBuilder)? updates]) =>
      (new CreateCommunityRequestBodyBuilder()..update(updates))._build();

  _$CreateCommunityRequestBody._({this.name, this.description}) : super._();

  @override
  CreateCommunityRequestBody rebuild(
          void Function(CreateCommunityRequestBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCommunityRequestBodyBuilder toBuilder() =>
      new CreateCommunityRequestBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCommunityRequestBody &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateCommunityRequestBody')
          ..add('name', name)
          ..add('description', description))
        .toString();
  }
}

class CreateCommunityRequestBodyBuilder
    implements
        Builder<CreateCommunityRequestBody, CreateCommunityRequestBodyBuilder> {
  _$CreateCommunityRequestBody? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  CreateCommunityRequestBodyBuilder() {
    CreateCommunityRequestBody._defaults(this);
  }

  CreateCommunityRequestBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCommunityRequestBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateCommunityRequestBody;
  }

  @override
  void update(void Function(CreateCommunityRequestBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCommunityRequestBody build() => _build();

  _$CreateCommunityRequestBody _build() {
    final _$result = _$v ??
        new _$CreateCommunityRequestBody._(
            name: name, description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
