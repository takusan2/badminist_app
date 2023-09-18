// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rename_community_request_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RenameCommunityRequestBody extends RenameCommunityRequestBody {
  @override
  final String? name;

  factory _$RenameCommunityRequestBody(
          [void Function(RenameCommunityRequestBodyBuilder)? updates]) =>
      (new RenameCommunityRequestBodyBuilder()..update(updates))._build();

  _$RenameCommunityRequestBody._({this.name}) : super._();

  @override
  RenameCommunityRequestBody rebuild(
          void Function(RenameCommunityRequestBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RenameCommunityRequestBodyBuilder toBuilder() =>
      new RenameCommunityRequestBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RenameCommunityRequestBody && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RenameCommunityRequestBody')
          ..add('name', name))
        .toString();
  }
}

class RenameCommunityRequestBodyBuilder
    implements
        Builder<RenameCommunityRequestBody, RenameCommunityRequestBodyBuilder> {
  _$RenameCommunityRequestBody? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  RenameCommunityRequestBodyBuilder() {
    RenameCommunityRequestBody._defaults(this);
  }

  RenameCommunityRequestBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RenameCommunityRequestBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RenameCommunityRequestBody;
  }

  @override
  void update(void Function(RenameCommunityRequestBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RenameCommunityRequestBody build() => _build();

  _$RenameCommunityRequestBody _build() {
    final _$result = _$v ?? new _$RenameCommunityRequestBody._(name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
