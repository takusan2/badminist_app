// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'success.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Success extends Success {
  @override
  final String? message;

  factory _$Success([void Function(SuccessBuilder)? updates]) =>
      (new SuccessBuilder()..update(updates))._build();

  _$Success._({this.message}) : super._();

  @override
  Success rebuild(void Function(SuccessBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuccessBuilder toBuilder() => new SuccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Success && message == other.message;
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
    return (newBuiltValueToStringHelper(r'Success')..add('message', message))
        .toString();
  }
}

class SuccessBuilder implements Builder<Success, SuccessBuilder> {
  _$Success? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  SuccessBuilder() {
    Success._defaults(this);
  }

  SuccessBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Success other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Success;
  }

  @override
  void update(void Function(SuccessBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Success build() => _build();

  _$Success _build() {
    final _$result = _$v ?? new _$Success._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
