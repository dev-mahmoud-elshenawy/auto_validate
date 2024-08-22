// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

/// Created By Mahmoud El Shenawy (Dev.M.ElShenawy@Icloud.com)

part of 'auto_validators.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AutoValidators {
  String? get input => throw _privateConstructorUsedError;

  /// Create a copy of AutoValidators
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AutoValidatorsCopyWith<AutoValidators> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoValidatorsCopyWith<$Res> {
  factory $AutoValidatorsCopyWith(
          AutoValidators value, $Res Function(AutoValidators) then) =
      _$AutoValidatorsCopyWithImpl<$Res, AutoValidators>;
  @useResult
  $Res call({String? input});
}

/// @nodoc
class _$AutoValidatorsCopyWithImpl<$Res, $Val extends AutoValidators>
    implements $AutoValidatorsCopyWith<$Res> {
  _$AutoValidatorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AutoValidators
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_value.copyWith(
      input: freezed == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$inputImplCopyWith<$Res>
    implements $AutoValidatorsCopyWith<$Res> {
  factory _$$inputImplCopyWith(
          _$inputImpl value, $Res Function(_$inputImpl) then) =
      __$$inputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? input});
}

/// @nodoc
class __$$inputImplCopyWithImpl<$Res>
    extends _$AutoValidatorsCopyWithImpl<$Res, _$inputImpl>
    implements _$$inputImplCopyWith<$Res> {
  __$$inputImplCopyWithImpl(
      _$inputImpl _value, $Res Function(_$inputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoValidators
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_$inputImpl(
      freezed == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$inputImpl extends _input with DiagnosticableTreeMixin {
  _$inputImpl(this.input) : super._();

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$inputImpl &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  /// Create a copy of AutoValidators
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$inputImplCopyWith<_$inputImpl> get copyWith =>
      __$$inputImplCopyWithImpl<_$inputImpl>(this, _$identity);
}

abstract class _input extends AutoValidators {
  factory _input(final String? input) = _$inputImpl;
  _input._() : super._();

  @override
  String? get input;

  /// Create a copy of AutoValidators
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$inputImplCopyWith<_$inputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
