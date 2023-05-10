// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'environment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EnvironmentModel _$EnvironmentModelFromJson(Map<String, dynamic> json) {
  return _EnvironmentModel.fromJson(json);
}

/// @nodoc
mixin _$EnvironmentModel {
  String get environmentName => throw _privateConstructorUsedError;
  String get environmentIcon => throw _privateConstructorUsedError;
  int get environmentNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnvironmentModelCopyWith<EnvironmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnvironmentModelCopyWith<$Res> {
  factory $EnvironmentModelCopyWith(
          EnvironmentModel value, $Res Function(EnvironmentModel) then) =
      _$EnvironmentModelCopyWithImpl<$Res, EnvironmentModel>;
  @useResult
  $Res call(
      {String environmentName, String environmentIcon, int environmentNumber});
}

/// @nodoc
class _$EnvironmentModelCopyWithImpl<$Res, $Val extends EnvironmentModel>
    implements $EnvironmentModelCopyWith<$Res> {
  _$EnvironmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? environmentName = null,
    Object? environmentIcon = null,
    Object? environmentNumber = null,
  }) {
    return _then(_value.copyWith(
      environmentName: null == environmentName
          ? _value.environmentName
          : environmentName // ignore: cast_nullable_to_non_nullable
              as String,
      environmentIcon: null == environmentIcon
          ? _value.environmentIcon
          : environmentIcon // ignore: cast_nullable_to_non_nullable
              as String,
      environmentNumber: null == environmentNumber
          ? _value.environmentNumber
          : environmentNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EnvironmentModelCopyWith<$Res>
    implements $EnvironmentModelCopyWith<$Res> {
  factory _$$_EnvironmentModelCopyWith(
          _$_EnvironmentModel value, $Res Function(_$_EnvironmentModel) then) =
      __$$_EnvironmentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String environmentName, String environmentIcon, int environmentNumber});
}

/// @nodoc
class __$$_EnvironmentModelCopyWithImpl<$Res>
    extends _$EnvironmentModelCopyWithImpl<$Res, _$_EnvironmentModel>
    implements _$$_EnvironmentModelCopyWith<$Res> {
  __$$_EnvironmentModelCopyWithImpl(
      _$_EnvironmentModel _value, $Res Function(_$_EnvironmentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? environmentName = null,
    Object? environmentIcon = null,
    Object? environmentNumber = null,
  }) {
    return _then(_$_EnvironmentModel(
      environmentName: null == environmentName
          ? _value.environmentName
          : environmentName // ignore: cast_nullable_to_non_nullable
              as String,
      environmentIcon: null == environmentIcon
          ? _value.environmentIcon
          : environmentIcon // ignore: cast_nullable_to_non_nullable
              as String,
      environmentNumber: null == environmentNumber
          ? _value.environmentNumber
          : environmentNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EnvironmentModel implements _EnvironmentModel {
  _$_EnvironmentModel(
      {this.environmentName = '',
      this.environmentIcon = '',
      this.environmentNumber = 0});

  factory _$_EnvironmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_EnvironmentModelFromJson(json);

  @override
  @JsonKey()
  final String environmentName;
  @override
  @JsonKey()
  final String environmentIcon;
  @override
  @JsonKey()
  final int environmentNumber;

  @override
  String toString() {
    return 'EnvironmentModel(environmentName: $environmentName, environmentIcon: $environmentIcon, environmentNumber: $environmentNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EnvironmentModel &&
            (identical(other.environmentName, environmentName) ||
                other.environmentName == environmentName) &&
            (identical(other.environmentIcon, environmentIcon) ||
                other.environmentIcon == environmentIcon) &&
            (identical(other.environmentNumber, environmentNumber) ||
                other.environmentNumber == environmentNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, environmentName, environmentIcon, environmentNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EnvironmentModelCopyWith<_$_EnvironmentModel> get copyWith =>
      __$$_EnvironmentModelCopyWithImpl<_$_EnvironmentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EnvironmentModelToJson(
      this,
    );
  }
}

abstract class _EnvironmentModel implements EnvironmentModel {
  factory _EnvironmentModel(
      {final String environmentName,
      final String environmentIcon,
      final int environmentNumber}) = _$_EnvironmentModel;

  factory _EnvironmentModel.fromJson(Map<String, dynamic> json) =
      _$_EnvironmentModel.fromJson;

  @override
  String get environmentName;
  @override
  String get environmentIcon;
  @override
  int get environmentNumber;
  @override
  @JsonKey(ignore: true)
  _$$_EnvironmentModelCopyWith<_$_EnvironmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
