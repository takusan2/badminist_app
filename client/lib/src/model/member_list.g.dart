// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MemberList extends MemberList {
  @override
  final BuiltList<MemberReadModel>? members;

  factory _$MemberList([void Function(MemberListBuilder)? updates]) =>
      (new MemberListBuilder()..update(updates))._build();

  _$MemberList._({this.members}) : super._();

  @override
  MemberList rebuild(void Function(MemberListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MemberListBuilder toBuilder() => new MemberListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MemberList && members == other.members;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, members.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MemberList')..add('members', members))
        .toString();
  }
}

class MemberListBuilder implements Builder<MemberList, MemberListBuilder> {
  _$MemberList? _$v;

  ListBuilder<MemberReadModel>? _members;
  ListBuilder<MemberReadModel> get members =>
      _$this._members ??= new ListBuilder<MemberReadModel>();
  set members(ListBuilder<MemberReadModel>? members) =>
      _$this._members = members;

  MemberListBuilder() {
    MemberList._defaults(this);
  }

  MemberListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _members = $v.members?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MemberList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MemberList;
  }

  @override
  void update(void Function(MemberListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MemberList build() => _build();

  _$MemberList _build() {
    _$MemberList _$result;
    try {
      _$result = _$v ?? new _$MemberList._(members: _members?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'members';
        _members?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MemberList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
