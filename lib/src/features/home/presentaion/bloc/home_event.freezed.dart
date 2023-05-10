// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectLocationEvent,
    required TResult Function() selectSymptomsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectLocationEvent,
    TResult? Function()? selectSymptomsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectLocationEvent,
    TResult Function()? selectSymptomsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectLocationEvent value) selectLocationEvent,
    required TResult Function(SelectSymptomsEvent value) selectSymptomsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectLocationEvent value)? selectLocationEvent,
    TResult? Function(SelectSymptomsEvent value)? selectSymptomsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectLocationEvent value)? selectLocationEvent,
    TResult Function(SelectSymptomsEvent value)? selectSymptomsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SelectLocationEventCopyWith<$Res> {
  factory _$$SelectLocationEventCopyWith(_$SelectLocationEvent value,
          $Res Function(_$SelectLocationEvent) then) =
      __$$SelectLocationEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectLocationEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SelectLocationEvent>
    implements _$$SelectLocationEventCopyWith<$Res> {
  __$$SelectLocationEventCopyWithImpl(
      _$SelectLocationEvent _value, $Res Function(_$SelectLocationEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SelectLocationEvent implements SelectLocationEvent {
  const _$SelectLocationEvent();

  @override
  String toString() {
    return 'HomeEvent.selectLocationEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SelectLocationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectLocationEvent,
    required TResult Function() selectSymptomsEvent,
  }) {
    return selectLocationEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectLocationEvent,
    TResult? Function()? selectSymptomsEvent,
  }) {
    return selectLocationEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectLocationEvent,
    TResult Function()? selectSymptomsEvent,
    required TResult orElse(),
  }) {
    if (selectLocationEvent != null) {
      return selectLocationEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectLocationEvent value) selectLocationEvent,
    required TResult Function(SelectSymptomsEvent value) selectSymptomsEvent,
  }) {
    return selectLocationEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectLocationEvent value)? selectLocationEvent,
    TResult? Function(SelectSymptomsEvent value)? selectSymptomsEvent,
  }) {
    return selectLocationEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectLocationEvent value)? selectLocationEvent,
    TResult Function(SelectSymptomsEvent value)? selectSymptomsEvent,
    required TResult orElse(),
  }) {
    if (selectLocationEvent != null) {
      return selectLocationEvent(this);
    }
    return orElse();
  }
}

abstract class SelectLocationEvent implements HomeEvent {
  const factory SelectLocationEvent() = _$SelectLocationEvent;
}

/// @nodoc
abstract class _$$SelectSymptomsEventCopyWith<$Res> {
  factory _$$SelectSymptomsEventCopyWith(_$SelectSymptomsEvent value,
          $Res Function(_$SelectSymptomsEvent) then) =
      __$$SelectSymptomsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectSymptomsEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SelectSymptomsEvent>
    implements _$$SelectSymptomsEventCopyWith<$Res> {
  __$$SelectSymptomsEventCopyWithImpl(
      _$SelectSymptomsEvent _value, $Res Function(_$SelectSymptomsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SelectSymptomsEvent implements SelectSymptomsEvent {
  const _$SelectSymptomsEvent();

  @override
  String toString() {
    return 'HomeEvent.selectSymptomsEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SelectSymptomsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectLocationEvent,
    required TResult Function() selectSymptomsEvent,
  }) {
    return selectSymptomsEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectLocationEvent,
    TResult? Function()? selectSymptomsEvent,
  }) {
    return selectSymptomsEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectLocationEvent,
    TResult Function()? selectSymptomsEvent,
    required TResult orElse(),
  }) {
    if (selectSymptomsEvent != null) {
      return selectSymptomsEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectLocationEvent value) selectLocationEvent,
    required TResult Function(SelectSymptomsEvent value) selectSymptomsEvent,
  }) {
    return selectSymptomsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectLocationEvent value)? selectLocationEvent,
    TResult? Function(SelectSymptomsEvent value)? selectSymptomsEvent,
  }) {
    return selectSymptomsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectLocationEvent value)? selectLocationEvent,
    TResult Function(SelectSymptomsEvent value)? selectSymptomsEvent,
    required TResult orElse(),
  }) {
    if (selectSymptomsEvent != null) {
      return selectSymptomsEvent(this);
    }
    return orElse();
  }
}

abstract class SelectSymptomsEvent implements HomeEvent {
  const factory SelectSymptomsEvent() = _$SelectSymptomsEvent;
}
