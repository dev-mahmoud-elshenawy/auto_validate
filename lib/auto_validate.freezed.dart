part of 'auto_validate.dart';

/// Created By Mahmoud El Shenawy (Dev.Mahmoud.ElShenawy@Gmail.com)

T _$identity<T>(T value) => value;

class _$AutoValidateTearOff {
  const _$AutoValidateTearOff();

  Input call(String input) {
    return Input(
      input,
    );
  }
}

const $AutoValidate = _$AutoValidateTearOff();

mixin _$AutoValidate {
  String get input;

  @JsonKey(ignore: true)
  $AutoValidateCopyWith<AutoValidate> get copyWith;
}

abstract class $AutoValidateCopyWith<$Res> {
  factory $AutoValidateCopyWith(
          AutoValidate value, $Res Function(AutoValidate) then) =
      _$AutoValidateCopyWithImpl<$Res>;

  $Res call({String input});
}

class _$AutoValidateCopyWithImpl<$Res> implements $AutoValidateCopyWith<$Res> {
  _$AutoValidateCopyWithImpl(this._value, this._then);

  final AutoValidate _value;

  final $Res Function(AutoValidate) _then;

  @override
  $Res call({
    Object input = freezed,
  }) {
    return _then(_value.copyWith(
      input: input == freezed ? _value.input : input as String,
    ));
  }
}

abstract class $InputCopyWith<$Res> implements $AutoValidateCopyWith<$Res> {
  factory $InputCopyWith(Input value, $Res Function(Input) then) =
      _$InputCopyWithImpl<$Res>;

  @override
  $Res call({String input});
}

class _$InputCopyWithImpl<$Res> extends _$AutoValidateCopyWithImpl<$Res>
    implements $InputCopyWith<$Res> {
  _$InputCopyWithImpl(Input _value, $Res Function(Input) _then)
      : super(_value, (v) => _then(v as Input));

  @override
  Input get _value => super._value as Input;

  @override
  $Res call({
    Object input = freezed,
  }) {
    return _then(Input(
      input == freezed ? _value.input : input as String,
    ));
  }
}

class _$Input implements Input {
  const _$Input(this.input) : assert(input != null);

  @override
  final String input;

  @override
  String toString() {
    return 'AutoValidate(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Input &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @JsonKey(ignore: true)
  @override
  $InputCopyWith<Input> get copyWith =>
      _$InputCopyWithImpl<Input>(this, _$identity);
}

abstract class Input implements AutoValidate {
  const factory Input(String input) = _$Input;

  @override
  String get input;

  @override
  @JsonKey(ignore: true)
  $InputCopyWith<Input> get copyWith;
}
