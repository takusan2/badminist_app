// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failure.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Failure extends Failure {
  @override
  final String? message;

  factory _$Failure([void Function(FailureBuilder)? updates]) =>
      (new FailureBuilder()..update(updates))._build();

  _$Failure._({this.message}) : super._();

  @override
  Failure rebuild(void Function(FailureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FailureBuilder toBuilder() => new FailureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Failure && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Failure')..add('message', message))
        .toString();
  }
}

class FailureBuilder implements Builder<Failure, FailureBuilder> {
  _$Failure? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  FailureBuilder() {
    Failure._defaults(this);
  }

  FailureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Failure other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Failure;
  }

  @override
  void update(void Function(FailureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Failure build() => _build();

  _$Failure _build() {
    final _$result = _$v ?? new _$Failure._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
