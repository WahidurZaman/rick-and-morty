// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationDataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationDataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationDataLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationDataLoaded value) locationDataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationDataLoaded value)? locationDataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationDataLoaded value)? locationDataLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res, LocationEvent>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res, $Val extends LocationEvent>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LocationDataLoadedImplCopyWith<$Res> {
  factory _$$LocationDataLoadedImplCopyWith(_$LocationDataLoadedImpl value,
          $Res Function(_$LocationDataLoadedImpl) then) =
      __$$LocationDataLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationDataLoadedImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$LocationDataLoadedImpl>
    implements _$$LocationDataLoadedImplCopyWith<$Res> {
  __$$LocationDataLoadedImplCopyWithImpl(_$LocationDataLoadedImpl _value,
      $Res Function(_$LocationDataLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationDataLoadedImpl implements _LocationDataLoaded {
  const _$LocationDataLoadedImpl();

  @override
  String toString() {
    return 'LocationEvent.locationDataLoaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationDataLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationDataLoaded,
  }) {
    return locationDataLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationDataLoaded,
  }) {
    return locationDataLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationDataLoaded,
    required TResult orElse(),
  }) {
    if (locationDataLoaded != null) {
      return locationDataLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationDataLoaded value) locationDataLoaded,
  }) {
    return locationDataLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationDataLoaded value)? locationDataLoaded,
  }) {
    return locationDataLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationDataLoaded value)? locationDataLoaded,
    required TResult orElse(),
  }) {
    if (locationDataLoaded != null) {
      return locationDataLoaded(this);
    }
    return orElse();
  }
}

abstract class _LocationDataLoaded implements LocationEvent {
  const factory _LocationDataLoaded() = _$LocationDataLoadedImpl;
}

/// @nodoc
mixin _$LocationState {
  LocationModelResponse get locationResponseData =>
      throw _privateConstructorUsedError;
  LocationStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
  @useResult
  $Res call(
      {LocationModelResponse locationResponseData, LocationStatus status});
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationResponseData = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      locationResponseData: null == locationResponseData
          ? _value.locationResponseData
          : locationResponseData // ignore: cast_nullable_to_non_nullable
              as LocationModelResponse,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LocationStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationStateImplCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$$LocationStateImplCopyWith(
          _$LocationStateImpl value, $Res Function(_$LocationStateImpl) then) =
      __$$LocationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LocationModelResponse locationResponseData, LocationStatus status});
}

/// @nodoc
class __$$LocationStateImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationStateImpl>
    implements _$$LocationStateImplCopyWith<$Res> {
  __$$LocationStateImplCopyWithImpl(
      _$LocationStateImpl _value, $Res Function(_$LocationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationResponseData = null,
    Object? status = null,
  }) {
    return _then(_$LocationStateImpl(
      locationResponseData: null == locationResponseData
          ? _value.locationResponseData
          : locationResponseData // ignore: cast_nullable_to_non_nullable
              as LocationModelResponse,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LocationStatus,
    ));
  }
}

/// @nodoc

class _$LocationStateImpl implements _LocationState {
  const _$LocationStateImpl(
      {this.locationResponseData = const LocationModelResponse(),
      this.status = LocationStatus.initial});

  @override
  @JsonKey()
  final LocationModelResponse locationResponseData;
  @override
  @JsonKey()
  final LocationStatus status;

  @override
  String toString() {
    return 'LocationState(locationResponseData: $locationResponseData, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationStateImpl &&
            (identical(other.locationResponseData, locationResponseData) ||
                other.locationResponseData == locationResponseData) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationResponseData, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationStateImplCopyWith<_$LocationStateImpl> get copyWith =>
      __$$LocationStateImplCopyWithImpl<_$LocationStateImpl>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  const factory _LocationState(
      {final LocationModelResponse locationResponseData,
      final LocationStatus status}) = _$LocationStateImpl;

  @override
  LocationModelResponse get locationResponseData;
  @override
  LocationStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$LocationStateImplCopyWith<_$LocationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
