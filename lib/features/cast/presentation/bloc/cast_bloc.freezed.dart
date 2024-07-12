// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cast_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CastEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() castDataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? castDataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? castDataLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CastDataLoaded value) castDataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CastDataLoaded value)? castDataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CastDataLoaded value)? castDataLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastEventCopyWith<$Res> {
  factory $CastEventCopyWith(CastEvent value, $Res Function(CastEvent) then) =
      _$CastEventCopyWithImpl<$Res, CastEvent>;
}

/// @nodoc
class _$CastEventCopyWithImpl<$Res, $Val extends CastEvent>
    implements $CastEventCopyWith<$Res> {
  _$CastEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CastDataLoadedImplCopyWith<$Res> {
  factory _$$CastDataLoadedImplCopyWith(_$CastDataLoadedImpl value,
          $Res Function(_$CastDataLoadedImpl) then) =
      __$$CastDataLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CastDataLoadedImplCopyWithImpl<$Res>
    extends _$CastEventCopyWithImpl<$Res, _$CastDataLoadedImpl>
    implements _$$CastDataLoadedImplCopyWith<$Res> {
  __$$CastDataLoadedImplCopyWithImpl(
      _$CastDataLoadedImpl _value, $Res Function(_$CastDataLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CastDataLoadedImpl implements _CastDataLoaded {
  const _$CastDataLoadedImpl();

  @override
  String toString() {
    return 'CastEvent.castDataLoaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CastDataLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() castDataLoaded,
  }) {
    return castDataLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? castDataLoaded,
  }) {
    return castDataLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? castDataLoaded,
    required TResult orElse(),
  }) {
    if (castDataLoaded != null) {
      return castDataLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CastDataLoaded value) castDataLoaded,
  }) {
    return castDataLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CastDataLoaded value)? castDataLoaded,
  }) {
    return castDataLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CastDataLoaded value)? castDataLoaded,
    required TResult orElse(),
  }) {
    if (castDataLoaded != null) {
      return castDataLoaded(this);
    }
    return orElse();
  }
}

abstract class _CastDataLoaded implements CastEvent {
  const factory _CastDataLoaded() = _$CastDataLoadedImpl;
}

/// @nodoc
mixin _$CastState {
  CharecterModelResponse get castResponseData =>
      throw _privateConstructorUsedError;
  CastStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CastStateCopyWith<CastState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastStateCopyWith<$Res> {
  factory $CastStateCopyWith(CastState value, $Res Function(CastState) then) =
      _$CastStateCopyWithImpl<$Res, CastState>;
  @useResult
  $Res call({CharecterModelResponse castResponseData, CastStatus status});
}

/// @nodoc
class _$CastStateCopyWithImpl<$Res, $Val extends CastState>
    implements $CastStateCopyWith<$Res> {
  _$CastStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? castResponseData = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      castResponseData: null == castResponseData
          ? _value.castResponseData
          : castResponseData // ignore: cast_nullable_to_non_nullable
              as CharecterModelResponse,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CastStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CastStateImplCopyWith<$Res>
    implements $CastStateCopyWith<$Res> {
  factory _$$CastStateImplCopyWith(
          _$CastStateImpl value, $Res Function(_$CastStateImpl) then) =
      __$$CastStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CharecterModelResponse castResponseData, CastStatus status});
}

/// @nodoc
class __$$CastStateImplCopyWithImpl<$Res>
    extends _$CastStateCopyWithImpl<$Res, _$CastStateImpl>
    implements _$$CastStateImplCopyWith<$Res> {
  __$$CastStateImplCopyWithImpl(
      _$CastStateImpl _value, $Res Function(_$CastStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? castResponseData = null,
    Object? status = null,
  }) {
    return _then(_$CastStateImpl(
      castResponseData: null == castResponseData
          ? _value.castResponseData
          : castResponseData // ignore: cast_nullable_to_non_nullable
              as CharecterModelResponse,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CastStatus,
    ));
  }
}

/// @nodoc

class _$CastStateImpl implements _CastState {
  const _$CastStateImpl(
      {this.castResponseData = const CharecterModelResponse(),
      this.status = CastStatus.initial});

  @override
  @JsonKey()
  final CharecterModelResponse castResponseData;
  @override
  @JsonKey()
  final CastStatus status;

  @override
  String toString() {
    return 'CastState(castResponseData: $castResponseData, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CastStateImpl &&
            (identical(other.castResponseData, castResponseData) ||
                other.castResponseData == castResponseData) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, castResponseData, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CastStateImplCopyWith<_$CastStateImpl> get copyWith =>
      __$$CastStateImplCopyWithImpl<_$CastStateImpl>(this, _$identity);
}

abstract class _CastState implements CastState {
  const factory _CastState(
      {final CharecterModelResponse castResponseData,
      final CastStatus status}) = _$CastStateImpl;

  @override
  CharecterModelResponse get castResponseData;
  @override
  CastStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$CastStateImplCopyWith<_$CastStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
