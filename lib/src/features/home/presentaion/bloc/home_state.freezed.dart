// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  RecordModel? get recordModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({RecordModel? recordModel});

  $RecordModelCopyWith<$Res>? get recordModel;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordModel = freezed,
  }) {
    return _then(_value.copyWith(
      recordModel: freezed == recordModel
          ? _value.recordModel
          : recordModel // ignore: cast_nullable_to_non_nullable
              as RecordModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecordModelCopyWith<$Res>? get recordModel {
    if (_value.recordModel == null) {
      return null;
    }

    return $RecordModelCopyWith<$Res>(_value.recordModel!, (value) {
      return _then(_value.copyWith(recordModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RecordModel? recordModel});

  @override
  $RecordModelCopyWith<$Res>? get recordModel;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordModel = freezed,
  }) {
    return _then(_$Initial(
      recordModel: freezed == recordModel
          ? _value.recordModel
          : recordModel // ignore: cast_nullable_to_non_nullable
              as RecordModel?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.recordModel});

  @override
  final RecordModel? recordModel;

  @override
  String toString() {
    return 'HomeState(recordModel: $recordModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initial &&
            (identical(other.recordModel, recordModel) ||
                other.recordModel == recordModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recordModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialCopyWith<_$Initial> get copyWith =>
      __$$InitialCopyWithImpl<_$Initial>(this, _$identity);
}

abstract class Initial implements HomeState {
  const factory Initial({final RecordModel? recordModel}) = _$Initial;

  @override
  RecordModel? get recordModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
