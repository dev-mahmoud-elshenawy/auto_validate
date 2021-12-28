// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auto_validators.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AutoValidatorsTearOff {
  const _$AutoValidatorsTearOff();

  _input call(String? input) {
    return _input(
      input,
    );
  }
}

/// @nodoc
const $AutoValidators = _$AutoValidatorsTearOff();

/// @nodoc
mixin _$AutoValidators {
  String? get input => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AutoValidatorsCopyWith<AutoValidators> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoValidatorsCopyWith<$Res> {
  factory $AutoValidatorsCopyWith(
          AutoValidators value, $Res Function(AutoValidators) then) =
      _$AutoValidatorsCopyWithImpl<$Res>;
  $Res call({String? input});
}

/// @nodoc
class _$AutoValidatorsCopyWithImpl<$Res>
    implements $AutoValidatorsCopyWith<$Res> {
  _$AutoValidatorsCopyWithImpl(this._value, this._then);

  final AutoValidators _value;
  // ignore: unused_field
  final $Res Function(AutoValidators) _then;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_value.copyWith(
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$inputCopyWith<$Res> implements $AutoValidatorsCopyWith<$Res> {
  factory _$inputCopyWith(_input value, $Res Function(_input) then) =
      __$inputCopyWithImpl<$Res>;
  @override
  $Res call({String? input});
}

/// @nodoc
class __$inputCopyWithImpl<$Res> extends _$AutoValidatorsCopyWithImpl<$Res>
    implements _$inputCopyWith<$Res> {
  __$inputCopyWithImpl(_input _value, $Res Function(_input) _then)
      : super(_value, (v) => _then(v as _input));

  @override
  _input get _value => super._value as _input;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_input(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_input extends _input with DiagnosticableTreeMixin {
  _$_input(this.input) : super._();

  @override
  final String? input;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AutoValidators(input: $input)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AutoValidators'))
      ..add(DiagnosticsProperty('input', input));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _input &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  _$inputCopyWith<_input> get copyWith =>
      __$inputCopyWithImpl<_input>(this, _$identity);
}

abstract class _input extends AutoValidators {
  factory _input(String? input) = _$_input;
  _input._() : super._();

  @override
  String? get input;
  @override
  @JsonKey(ignore: true)
  _$inputCopyWith<_input> get copyWith => throw _privateConstructorUsedError;
}
