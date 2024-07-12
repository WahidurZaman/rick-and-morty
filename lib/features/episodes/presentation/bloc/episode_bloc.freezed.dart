// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpisodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() episodeDataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? episodeDataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? episodeDataLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EpisodeDataLoaded value) episodeDataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EpisodeDataLoaded value)? episodeDataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EpisodeDataLoaded value)? episodeDataLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeEventCopyWith<$Res> {
  factory $EpisodeEventCopyWith(
          EpisodeEvent value, $Res Function(EpisodeEvent) then) =
      _$EpisodeEventCopyWithImpl<$Res, EpisodeEvent>;
}

/// @nodoc
class _$EpisodeEventCopyWithImpl<$Res, $Val extends EpisodeEvent>
    implements $EpisodeEventCopyWith<$Res> {
  _$EpisodeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EpisodeDataLoadedImplCopyWith<$Res> {
  factory _$$EpisodeDataLoadedImplCopyWith(_$EpisodeDataLoadedImpl value,
          $Res Function(_$EpisodeDataLoadedImpl) then) =
      __$$EpisodeDataLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EpisodeDataLoadedImplCopyWithImpl<$Res>
    extends _$EpisodeEventCopyWithImpl<$Res, _$EpisodeDataLoadedImpl>
    implements _$$EpisodeDataLoadedImplCopyWith<$Res> {
  __$$EpisodeDataLoadedImplCopyWithImpl(_$EpisodeDataLoadedImpl _value,
      $Res Function(_$EpisodeDataLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EpisodeDataLoadedImpl implements _EpisodeDataLoaded {
  const _$EpisodeDataLoadedImpl();

  @override
  String toString() {
    return 'EpisodeEvent.episodeDataLoaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EpisodeDataLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() episodeDataLoaded,
  }) {
    return episodeDataLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? episodeDataLoaded,
  }) {
    return episodeDataLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? episodeDataLoaded,
    required TResult orElse(),
  }) {
    if (episodeDataLoaded != null) {
      return episodeDataLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EpisodeDataLoaded value) episodeDataLoaded,
  }) {
    return episodeDataLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EpisodeDataLoaded value)? episodeDataLoaded,
  }) {
    return episodeDataLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EpisodeDataLoaded value)? episodeDataLoaded,
    required TResult orElse(),
  }) {
    if (episodeDataLoaded != null) {
      return episodeDataLoaded(this);
    }
    return orElse();
  }
}

abstract class _EpisodeDataLoaded implements EpisodeEvent {
  const factory _EpisodeDataLoaded() = _$EpisodeDataLoadedImpl;
}

/// @nodoc
mixin _$EpisodeState {
  EpisodesModelResponse get episodeResponseData =>
      throw _privateConstructorUsedError;
  EpisodeStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EpisodeStateCopyWith<EpisodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeStateCopyWith<$Res> {
  factory $EpisodeStateCopyWith(
          EpisodeState value, $Res Function(EpisodeState) then) =
      _$EpisodeStateCopyWithImpl<$Res, EpisodeState>;
  @useResult
  $Res call({EpisodesModelResponse episodeResponseData, EpisodeStatus status});
}

/// @nodoc
class _$EpisodeStateCopyWithImpl<$Res, $Val extends EpisodeState>
    implements $EpisodeStateCopyWith<$Res> {
  _$EpisodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? episodeResponseData = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      episodeResponseData: null == episodeResponseData
          ? _value.episodeResponseData
          : episodeResponseData // ignore: cast_nullable_to_non_nullable
              as EpisodesModelResponse,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EpisodeStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpisodeStateImplCopyWith<$Res>
    implements $EpisodeStateCopyWith<$Res> {
  factory _$$EpisodeStateImplCopyWith(
          _$EpisodeStateImpl value, $Res Function(_$EpisodeStateImpl) then) =
      __$$EpisodeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EpisodesModelResponse episodeResponseData, EpisodeStatus status});
}

/// @nodoc
class __$$EpisodeStateImplCopyWithImpl<$Res>
    extends _$EpisodeStateCopyWithImpl<$Res, _$EpisodeStateImpl>
    implements _$$EpisodeStateImplCopyWith<$Res> {
  __$$EpisodeStateImplCopyWithImpl(
      _$EpisodeStateImpl _value, $Res Function(_$EpisodeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? episodeResponseData = null,
    Object? status = null,
  }) {
    return _then(_$EpisodeStateImpl(
      episodeResponseData: null == episodeResponseData
          ? _value.episodeResponseData
          : episodeResponseData // ignore: cast_nullable_to_non_nullable
              as EpisodesModelResponse,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EpisodeStatus,
    ));
  }
}

/// @nodoc

class _$EpisodeStateImpl implements _EpisodeState {
  const _$EpisodeStateImpl(
      {this.episodeResponseData = const EpisodesModelResponse(),
      this.status = EpisodeStatus.initial});

  @override
  @JsonKey()
  final EpisodesModelResponse episodeResponseData;
  @override
  @JsonKey()
  final EpisodeStatus status;

  @override
  String toString() {
    return 'EpisodeState(episodeResponseData: $episodeResponseData, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeStateImpl &&
            (identical(other.episodeResponseData, episodeResponseData) ||
                other.episodeResponseData == episodeResponseData) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, episodeResponseData, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeStateImplCopyWith<_$EpisodeStateImpl> get copyWith =>
      __$$EpisodeStateImplCopyWithImpl<_$EpisodeStateImpl>(this, _$identity);
}

abstract class _EpisodeState implements EpisodeState {
  const factory _EpisodeState(
      {final EpisodesModelResponse episodeResponseData,
      final EpisodeStatus status}) = _$EpisodeStateImpl;

  @override
  EpisodesModelResponse get episodeResponseData;
  @override
  EpisodeStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$EpisodeStateImplCopyWith<_$EpisodeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
