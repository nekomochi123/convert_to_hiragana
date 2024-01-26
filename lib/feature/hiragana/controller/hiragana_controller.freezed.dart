// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hiragana_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HiraganaState {
  AsyncValue<String?> get convertedText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HiraganaStateCopyWith<HiraganaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HiraganaStateCopyWith<$Res> {
  factory $HiraganaStateCopyWith(
          HiraganaState value, $Res Function(HiraganaState) then) =
      _$HiraganaStateCopyWithImpl<$Res, HiraganaState>;
  @useResult
  $Res call({AsyncValue<String?> convertedText});
}

/// @nodoc
class _$HiraganaStateCopyWithImpl<$Res, $Val extends HiraganaState>
    implements $HiraganaStateCopyWith<$Res> {
  _$HiraganaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? convertedText = null,
  }) {
    return _then(_value.copyWith(
      convertedText: null == convertedText
          ? _value.convertedText
          : convertedText // ignore: cast_nullable_to_non_nullable
              as AsyncValue<String?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HiraganaStateImplCopyWith<$Res>
    implements $HiraganaStateCopyWith<$Res> {
  factory _$$HiraganaStateImplCopyWith(
          _$HiraganaStateImpl value, $Res Function(_$HiraganaStateImpl) then) =
      __$$HiraganaStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<String?> convertedText});
}

/// @nodoc
class __$$HiraganaStateImplCopyWithImpl<$Res>
    extends _$HiraganaStateCopyWithImpl<$Res, _$HiraganaStateImpl>
    implements _$$HiraganaStateImplCopyWith<$Res> {
  __$$HiraganaStateImplCopyWithImpl(
      _$HiraganaStateImpl _value, $Res Function(_$HiraganaStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? convertedText = null,
  }) {
    return _then(_$HiraganaStateImpl(
      convertedText: null == convertedText
          ? _value.convertedText
          : convertedText // ignore: cast_nullable_to_non_nullable
              as AsyncValue<String?>,
    ));
  }
}

/// @nodoc

class _$HiraganaStateImpl implements _HiraganaState {
  const _$HiraganaStateImpl({this.convertedText = const AsyncValue.data(null)});

  @override
  @JsonKey()
  final AsyncValue<String?> convertedText;

  @override
  String toString() {
    return 'HiraganaState(convertedText: $convertedText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HiraganaStateImpl &&
            (identical(other.convertedText, convertedText) ||
                other.convertedText == convertedText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, convertedText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HiraganaStateImplCopyWith<_$HiraganaStateImpl> get copyWith =>
      __$$HiraganaStateImplCopyWithImpl<_$HiraganaStateImpl>(this, _$identity);
}

abstract class _HiraganaState implements HiraganaState {
  const factory _HiraganaState({final AsyncValue<String?> convertedText}) =
      _$HiraganaStateImpl;

  @override
  AsyncValue<String?> get convertedText;
  @override
  @JsonKey(ignore: true)
  _$$HiraganaStateImplCopyWith<_$HiraganaStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
