// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characteristic_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacteristicsModel _$CharacteristicsModelFromJson(Map<String, dynamic> json) {
  return _CharacteristicsModel.fromJson(json);
}

/// @nodoc
mixin _$CharacteristicsModel {
  String get characteristicName => throw _privateConstructorUsedError;
  String get characteristicIcon => throw _privateConstructorUsedError;
  int get characteristicNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacteristicsModelCopyWith<CharacteristicsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacteristicsModelCopyWith<$Res> {
  factory $CharacteristicsModelCopyWith(CharacteristicsModel value,
          $Res Function(CharacteristicsModel) then) =
      _$CharacteristicsModelCopyWithImpl<$Res, CharacteristicsModel>;
  @useResult
  $Res call(
      {String characteristicName,
      String characteristicIcon,
      int characteristicNumber});
}

/// @nodoc
class _$CharacteristicsModelCopyWithImpl<$Res,
        $Val extends CharacteristicsModel>
    implements $CharacteristicsModelCopyWith<$Res> {
  _$CharacteristicsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characteristicName = null,
    Object? characteristicIcon = null,
    Object? characteristicNumber = null,
  }) {
    return _then(_value.copyWith(
      characteristicName: null == characteristicName
          ? _value.characteristicName
          : characteristicName // ignore: cast_nullable_to_non_nullable
              as String,
      characteristicIcon: null == characteristicIcon
          ? _value.characteristicIcon
          : characteristicIcon // ignore: cast_nullable_to_non_nullable
              as String,
      characteristicNumber: null == characteristicNumber
          ? _value.characteristicNumber
          : characteristicNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharacteristicsModelCopyWith<$Res>
    implements $CharacteristicsModelCopyWith<$Res> {
  factory _$$_CharacteristicsModelCopyWith(_$_CharacteristicsModel value,
          $Res Function(_$_CharacteristicsModel) then) =
      __$$_CharacteristicsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String characteristicName,
      String characteristicIcon,
      int characteristicNumber});
}

/// @nodoc
class __$$_CharacteristicsModelCopyWithImpl<$Res>
    extends _$CharacteristicsModelCopyWithImpl<$Res, _$_CharacteristicsModel>
    implements _$$_CharacteristicsModelCopyWith<$Res> {
  __$$_CharacteristicsModelCopyWithImpl(_$_CharacteristicsModel _value,
      $Res Function(_$_CharacteristicsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characteristicName = null,
    Object? characteristicIcon = null,
    Object? characteristicNumber = null,
  }) {
    return _then(_$_CharacteristicsModel(
      characteristicName: null == characteristicName
          ? _value.characteristicName
          : characteristicName // ignore: cast_nullable_to_non_nullable
              as String,
      characteristicIcon: null == characteristicIcon
          ? _value.characteristicIcon
          : characteristicIcon // ignore: cast_nullable_to_non_nullable
              as String,
      characteristicNumber: null == characteristicNumber
          ? _value.characteristicNumber
          : characteristicNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacteristicsModel implements _CharacteristicsModel {
  _$_CharacteristicsModel(
      {this.characteristicName = '',
      this.characteristicIcon = '',
      this.characteristicNumber = 0});

  factory _$_CharacteristicsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CharacteristicsModelFromJson(json);

  @override
  @JsonKey()
  final String characteristicName;
  @override
  @JsonKey()
  final String characteristicIcon;
  @override
  @JsonKey()
  final int characteristicNumber;

  @override
  String toString() {
    return 'CharacteristicsModel(characteristicName: $characteristicName, characteristicIcon: $characteristicIcon, characteristicNumber: $characteristicNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacteristicsModel &&
            (identical(other.characteristicName, characteristicName) ||
                other.characteristicName == characteristicName) &&
            (identical(other.characteristicIcon, characteristicIcon) ||
                other.characteristicIcon == characteristicIcon) &&
            (identical(other.characteristicNumber, characteristicNumber) ||
                other.characteristicNumber == characteristicNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, characteristicName,
      characteristicIcon, characteristicNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacteristicsModelCopyWith<_$_CharacteristicsModel> get copyWith =>
      __$$_CharacteristicsModelCopyWithImpl<_$_CharacteristicsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacteristicsModelToJson(
      this,
    );
  }
}

abstract class _CharacteristicsModel implements CharacteristicsModel {
  factory _CharacteristicsModel(
      {final String characteristicName,
      final String characteristicIcon,
      final int characteristicNumber}) = _$_CharacteristicsModel;

  factory _CharacteristicsModel.fromJson(Map<String, dynamic> json) =
      _$_CharacteristicsModel.fromJson;

  @override
  String get characteristicName;
  @override
  String get characteristicIcon;
  @override
  int get characteristicNumber;
  @override
  @JsonKey(ignore: true)
  _$$_CharacteristicsModelCopyWith<_$_CharacteristicsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
