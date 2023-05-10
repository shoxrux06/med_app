// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symptoms_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SymptomsModel _$SymptomsModelFromJson(Map<String, dynamic> json) {
  return _SymptomsModel.fromJson(json);
}

/// @nodoc
mixin _$SymptomsModel {
  String get symptomName => throw _privateConstructorUsedError;
  String get symptomIcon => throw _privateConstructorUsedError;
  int get symptomNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SymptomsModelCopyWith<SymptomsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomsModelCopyWith<$Res> {
  factory $SymptomsModelCopyWith(
          SymptomsModel value, $Res Function(SymptomsModel) then) =
      _$SymptomsModelCopyWithImpl<$Res, SymptomsModel>;
  @useResult
  $Res call({String symptomName, String symptomIcon, int symptomNumber});
}

/// @nodoc
class _$SymptomsModelCopyWithImpl<$Res, $Val extends SymptomsModel>
    implements $SymptomsModelCopyWith<$Res> {
  _$SymptomsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symptomName = null,
    Object? symptomIcon = null,
    Object? symptomNumber = null,
  }) {
    return _then(_value.copyWith(
      symptomName: null == symptomName
          ? _value.symptomName
          : symptomName // ignore: cast_nullable_to_non_nullable
              as String,
      symptomIcon: null == symptomIcon
          ? _value.symptomIcon
          : symptomIcon // ignore: cast_nullable_to_non_nullable
              as String,
      symptomNumber: null == symptomNumber
          ? _value.symptomNumber
          : symptomNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SymptomsModelCopyWith<$Res>
    implements $SymptomsModelCopyWith<$Res> {
  factory _$$_SymptomsModelCopyWith(
          _$_SymptomsModel value, $Res Function(_$_SymptomsModel) then) =
      __$$_SymptomsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String symptomName, String symptomIcon, int symptomNumber});
}

/// @nodoc
class __$$_SymptomsModelCopyWithImpl<$Res>
    extends _$SymptomsModelCopyWithImpl<$Res, _$_SymptomsModel>
    implements _$$_SymptomsModelCopyWith<$Res> {
  __$$_SymptomsModelCopyWithImpl(
      _$_SymptomsModel _value, $Res Function(_$_SymptomsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symptomName = null,
    Object? symptomIcon = null,
    Object? symptomNumber = null,
  }) {
    return _then(_$_SymptomsModel(
      symptomName: null == symptomName
          ? _value.symptomName
          : symptomName // ignore: cast_nullable_to_non_nullable
              as String,
      symptomIcon: null == symptomIcon
          ? _value.symptomIcon
          : symptomIcon // ignore: cast_nullable_to_non_nullable
              as String,
      symptomNumber: null == symptomNumber
          ? _value.symptomNumber
          : symptomNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SymptomsModel implements _SymptomsModel {
  _$_SymptomsModel(
      {this.symptomName = '', this.symptomIcon = '', this.symptomNumber = 0});

  factory _$_SymptomsModel.fromJson(Map<String, dynamic> json) =>
      _$$_SymptomsModelFromJson(json);

  @override
  @JsonKey()
  final String symptomName;
  @override
  @JsonKey()
  final String symptomIcon;
  @override
  @JsonKey()
  final int symptomNumber;

  @override
  String toString() {
    return 'SymptomsModel(symptomName: $symptomName, symptomIcon: $symptomIcon, symptomNumber: $symptomNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SymptomsModel &&
            (identical(other.symptomName, symptomName) ||
                other.symptomName == symptomName) &&
            (identical(other.symptomIcon, symptomIcon) ||
                other.symptomIcon == symptomIcon) &&
            (identical(other.symptomNumber, symptomNumber) ||
                other.symptomNumber == symptomNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, symptomName, symptomIcon, symptomNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SymptomsModelCopyWith<_$_SymptomsModel> get copyWith =>
      __$$_SymptomsModelCopyWithImpl<_$_SymptomsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SymptomsModelToJson(
      this,
    );
  }
}

abstract class _SymptomsModel implements SymptomsModel {
  factory _SymptomsModel(
      {final String symptomName,
      final String symptomIcon,
      final int symptomNumber}) = _$_SymptomsModel;

  factory _SymptomsModel.fromJson(Map<String, dynamic> json) =
      _$_SymptomsModel.fromJson;

  @override
  String get symptomName;
  @override
  String get symptomIcon;
  @override
  int get symptomNumber;
  @override
  @JsonKey(ignore: true)
  _$$_SymptomsModelCopyWith<_$_SymptomsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
