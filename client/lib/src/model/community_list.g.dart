// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CommunityList extends CommunityList {
  @override
  final BuiltList<CommunityReadModel>? communities;

  factory _$CommunityList([void Function(CommunityListBuilder)? updates]) =>
      (new CommunityListBuilder()..update(updates))._build();

  _$CommunityList._({this.communities}) : super._();

  @override
  CommunityList rebuild(void Function(CommunityListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommunityListBuilder toBuilder() => new CommunityListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommunityList && communities == other.communities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, communities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommunityList')
          ..add('communities', communities))
        .toString();
  }
}

class CommunityListBuilder
    implements Builder<CommunityList, CommunityListBuilder> {
  _$CommunityList? _$v;

  ListBuilder<CommunityReadModel>? _communities;
  ListBuilder<CommunityReadModel> get communities =>
      _$this._communities ??= new ListBuilder<CommunityReadModel>();
  set communities(ListBuilder<CommunityReadModel>? communities) =>
      _$this._communities = communities;

  CommunityListBuilder() {
    CommunityList._defaults(this);
  }

  CommunityListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _communities = $v.communities?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommunityList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommunityList;
  }

  @override
  void update(void Function(CommunityListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommunityList build() => _build();

  _$CommunityList _build() {
    _$CommunityList _$result;
    try {
      _$result =
          _$v ?? new _$CommunityList._(communities: _communities?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'communities';
        _communities?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CommunityList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
