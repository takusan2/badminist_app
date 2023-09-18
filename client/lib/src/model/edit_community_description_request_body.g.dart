// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_community_description_request_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EditCommunityDescriptionRequestBody
    extends EditCommunityDescriptionRequestBody {
  @override
  final String? communityId;
  @override
  final String? description;

  factory _$EditCommunityDescriptionRequestBody(
          [void Function(EditCommunityDescriptionRequestBodyBuilder)?
              updates]) =>
      (new EditCommunityDescriptionRequestBodyBuilder()..update(updates))
          ._build();

  _$EditCommunityDescriptionRequestBody._({this.communityId, this.description})
      : super._();

  @override
  EditCommunityDescriptionRequestBody rebuild(
          void Function(EditCommunityDescriptionRequestBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EditCommunityDescriptionRequestBodyBuilder toBuilder() =>
      new EditCommunityDescriptionRequestBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EditCommunityDescriptionRequestBody &&
        communityId == other.communityId &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, communityId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EditCommunityDescriptionRequestBody')
          ..add('communityId', communityId)
          ..add('description', description))
        .toString();
  }
}

class EditCommunityDescriptionRequestBodyBuilder
    implements
        Builder<EditCommunityDescriptionRequestBody,
            EditCommunityDescriptionRequestBodyBuilder> {
  _$EditCommunityDescriptionRequestBody? _$v;

  String? _communityId;
  String? get communityId => _$this._communityId;
  set communityId(String? communityId) => _$this._communityId = communityId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  EditCommunityDescriptionRequestBodyBuilder() {
    EditCommunityDescriptionRequestBody._defaults(this);
  }

  EditCommunityDescriptionRequestBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _communityId = $v.communityId;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EditCommunityDescriptionRequestBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EditCommunityDescriptionRequestBody;
  }

  @override
  void update(
      void Function(EditCommunityDescriptionRequestBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EditCommunityDescriptionRequestBody build() => _build();

  _$EditCommunityDescriptionRequestBody _build() {
    final _$result = _$v ??
        new _$EditCommunityDescriptionRequestBody._(
            communityId: communityId, description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
