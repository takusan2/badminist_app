// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_read_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CommunityReadModel extends CommunityReadModel {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  factory _$CommunityReadModel(
          [void Function(CommunityReadModelBuilder)? updates]) =>
      (new CommunityReadModelBuilder()..update(updates))._build();

  _$CommunityReadModel._(
      {this.id, this.name, this.description, this.createdAt, this.updatedAt})
      : super._();

  @override
  CommunityReadModel rebuild(
          void Function(CommunityReadModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommunityReadModelBuilder toBuilder() =>
      new CommunityReadModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommunityReadModel &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommunityReadModel')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class CommunityReadModelBuilder
    implements Builder<CommunityReadModel, CommunityReadModelBuilder> {
  _$CommunityReadModel? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  CommunityReadModelBuilder() {
    CommunityReadModel._defaults(this);
  }

  CommunityReadModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommunityReadModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommunityReadModel;
  }

  @override
  void update(void Function(CommunityReadModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommunityReadModel build() => _build();

  _$CommunityReadModel _build() {
    final _$result = _$v ??
        new _$CommunityReadModel._(
            id: id,
            name: name,
            description: description,
            createdAt: createdAt,
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
