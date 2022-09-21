// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signUpUserEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signUpUserEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signUpUserEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignUpUserEvent value) signUpUserEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUpUserEvent value)? signUpUserEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUpUserEvent value)? signUpUserEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res> implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  final SignUpEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'SignUpEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signUpUserEvent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signUpUserEvent,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signUpUserEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignUpUserEvent value) signUpUserEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUpUserEvent value)? signUpUserEvent,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUpUserEvent value)? signUpUserEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SignUpEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_SignUpUserEventCopyWith<$Res> {
  factory _$$_SignUpUserEventCopyWith(
          _$_SignUpUserEvent value, $Res Function(_$_SignUpUserEvent) then) =
      __$$_SignUpUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignUpUserEventCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$$_SignUpUserEventCopyWith<$Res> {
  __$$_SignUpUserEventCopyWithImpl(
      _$_SignUpUserEvent _value, $Res Function(_$_SignUpUserEvent) _then)
      : super(_value, (v) => _then(v as _$_SignUpUserEvent));

  @override
  _$_SignUpUserEvent get _value => super._value as _$_SignUpUserEvent;
}

/// @nodoc

class _$_SignUpUserEvent implements _SignUpUserEvent {
  const _$_SignUpUserEvent();

  @override
  String toString() {
    return 'SignUpEvent.signUpUserEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignUpUserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signUpUserEvent,
  }) {
    return signUpUserEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signUpUserEvent,
  }) {
    return signUpUserEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signUpUserEvent,
    required TResult orElse(),
  }) {
    if (signUpUserEvent != null) {
      return signUpUserEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignUpUserEvent value) signUpUserEvent,
  }) {
    return signUpUserEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUpUserEvent value)? signUpUserEvent,
  }) {
    return signUpUserEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUpUserEvent value)? signUpUserEvent,
    required TResult orElse(),
  }) {
    if (signUpUserEvent != null) {
      return signUpUserEvent(this);
    }
    return orElse();
  }
}

abstract class _SignUpUserEvent implements SignUpEvent {
  const factory _SignUpUserEvent() = _$_SignUpUserEvent;
}

/// @nodoc
mixin _$SignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isVisible) passwordVisibilityToggledState,
    required TResult Function() loadingState,
    required TResult Function(String message, DateTime date) errorState,
    required TResult Function() successState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isVisible)? passwordVisibilityToggledState,
    TResult Function()? loadingState,
    TResult Function(String message, DateTime date)? errorState,
    TResult Function()? successState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isVisible)? passwordVisibilityToggledState,
    TResult Function()? loadingState,
    TResult Function(String message, DateTime date)? errorState,
    TResult Function()? successState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PasswordVisibilityToggledState value)
        passwordVisibilityToggledState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ErrorState value) errorState,
    required TResult Function(_SuccessState value) successState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PasswordVisibilityToggledState value)?
        passwordVisibilityToggledState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_SuccessState value)? successState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PasswordVisibilityToggledState value)?
        passwordVisibilityToggledState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_SuccessState value)? successState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SignUpState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isVisible) passwordVisibilityToggledState,
    required TResult Function() loadingState,
    required TResult Function(String message, DateTime date) errorState,
    required TResult Function() successState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isVisible)? passwordVisibilityToggledState,
    TResult Function()? loadingState,
    TResult Function(String message, DateTime date)? errorState,
    TResult Function()? successState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isVisible)? passwordVisibilityToggledState,
    TResult Function()? loadingState,
    TResult Function(String message, DateTime date)? errorState,
    TResult Function()? successState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PasswordVisibilityToggledState value)
        passwordVisibilityToggledState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ErrorState value) errorState,
    required TResult Function(_SuccessState value) successState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PasswordVisibilityToggledState value)?
        passwordVisibilityToggledState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_SuccessState value)? successState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PasswordVisibilityToggledState value)?
        passwordVisibilityToggledState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_SuccessState value)? successState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignUpState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_PasswordVisibilityToggledStateCopyWith<$Res> {
  factory _$$_PasswordVisibilityToggledStateCopyWith(
          _$_PasswordVisibilityToggledState value,
          $Res Function(_$_PasswordVisibilityToggledState) then) =
      __$$_PasswordVisibilityToggledStateCopyWithImpl<$Res>;
  $Res call({bool isVisible});
}

/// @nodoc
class __$$_PasswordVisibilityToggledStateCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements _$$_PasswordVisibilityToggledStateCopyWith<$Res> {
  __$$_PasswordVisibilityToggledStateCopyWithImpl(
      _$_PasswordVisibilityToggledState _value,
      $Res Function(_$_PasswordVisibilityToggledState) _then)
      : super(_value, (v) => _then(v as _$_PasswordVisibilityToggledState));

  @override
  _$_PasswordVisibilityToggledState get _value =>
      super._value as _$_PasswordVisibilityToggledState;

  @override
  $Res call({
    Object? isVisible = freezed,
  }) {
    return _then(_$_PasswordVisibilityToggledState(
      isVisible == freezed
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PasswordVisibilityToggledState
    implements _PasswordVisibilityToggledState {
  const _$_PasswordVisibilityToggledState(this.isVisible);

  @override
  final bool isVisible;

  @override
  String toString() {
    return 'SignUpState.passwordVisibilityToggledState(isVisible: $isVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordVisibilityToggledState &&
            const DeepCollectionEquality().equals(other.isVisible, isVisible));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isVisible));

  @JsonKey(ignore: true)
  @override
  _$$_PasswordVisibilityToggledStateCopyWith<_$_PasswordVisibilityToggledState>
      get copyWith => __$$_PasswordVisibilityToggledStateCopyWithImpl<
          _$_PasswordVisibilityToggledState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isVisible) passwordVisibilityToggledState,
    required TResult Function() loadingState,
    required TResult Function(String message, DateTime date) errorState,
    required TResult Function() successState,
  }) {
    return passwordVisibilityToggledState(isVisible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isVisible)? passwordVisibilityToggledState,
    TResult Function()? loadingState,
    TResult Function(String message, DateTime date)? errorState,
    TResult Function()? successState,
  }) {
    return passwordVisibilityToggledState?.call(isVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isVisible)? passwordVisibilityToggledState,
    TResult Function()? loadingState,
    TResult Function(String message, DateTime date)? errorState,
    TResult Function()? successState,
    required TResult orElse(),
  }) {
    if (passwordVisibilityToggledState != null) {
      return passwordVisibilityToggledState(isVisible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PasswordVisibilityToggledState value)
        passwordVisibilityToggledState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ErrorState value) errorState,
    required TResult Function(_SuccessState value) successState,
  }) {
    return passwordVisibilityToggledState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PasswordVisibilityToggledState value)?
        passwordVisibilityToggledState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_SuccessState value)? successState,
  }) {
    return passwordVisibilityToggledState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PasswordVisibilityToggledState value)?
        passwordVisibilityToggledState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_SuccessState value)? successState,
    required TResult orElse(),
  }) {
    if (passwordVisibilityToggledState != null) {
      return passwordVisibilityToggledState(this);
    }
    return orElse();
  }
}

abstract class _PasswordVisibilityToggledState implements SignUpState {
  const factory _PasswordVisibilityToggledState(final bool isVisible) =
      _$_PasswordVisibilityToggledState;

  bool get isVisible;
  @JsonKey(ignore: true)
  _$$_PasswordVisibilityToggledStateCopyWith<_$_PasswordVisibilityToggledState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, (v) => _then(v as _$_LoadingState));

  @override
  _$_LoadingState get _value => super._value as _$_LoadingState;
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString() {
    return 'SignUpState.loadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isVisible) passwordVisibilityToggledState,
    required TResult Function() loadingState,
    required TResult Function(String message, DateTime date) errorState,
    required TResult Function() successState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isVisible)? passwordVisibilityToggledState,
    TResult Function()? loadingState,
    TResult Function(String message, DateTime date)? errorState,
    TResult Function()? successState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isVisible)? passwordVisibilityToggledState,
    TResult Function()? loadingState,
    TResult Function(String message, DateTime date)? errorState,
    TResult Function()? successState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PasswordVisibilityToggledState value)
        passwordVisibilityToggledState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ErrorState value) errorState,
    required TResult Function(_SuccessState value) successState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PasswordVisibilityToggledState value)?
        passwordVisibilityToggledState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_SuccessState value)? successState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PasswordVisibilityToggledState value)?
        passwordVisibilityToggledState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_SuccessState value)? successState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements SignUpState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  $Res call({String message, DateTime date});
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$$_ErrorStateCopyWith<$Res> {
  __$$_ErrorStateCopyWithImpl(
      _$_ErrorState _value, $Res Function(_$_ErrorState) _then)
      : super(_value, (v) => _then(v as _$_ErrorState));

  @override
  _$_ErrorState get _value => super._value as _$_ErrorState;

  @override
  $Res call({
    Object? message = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_ErrorState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_ErrorState implements _ErrorState {
  const _$_ErrorState(this.message, this.date);

  @override
  final String message;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'SignUpState.errorState(message: $message, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorState &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      __$$_ErrorStateCopyWithImpl<_$_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isVisible) passwordVisibilityToggledState,
    required TResult Function() loadingState,
    required TResult Function(String message, DateTime date) errorState,
    required TResult Function() successState,
  }) {
    return errorState(message, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isVisible)? passwordVisibilityToggledState,
    TResult Function()? loadingState,
    TResult Function(String message, DateTime date)? errorState,
    TResult Function()? successState,
  }) {
    return errorState?.call(message, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isVisible)? passwordVisibilityToggledState,
    TResult Function()? loadingState,
    TResult Function(String message, DateTime date)? errorState,
    TResult Function()? successState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(message, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PasswordVisibilityToggledState value)
        passwordVisibilityToggledState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ErrorState value) errorState,
    required TResult Function(_SuccessState value) successState,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PasswordVisibilityToggledState value)?
        passwordVisibilityToggledState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_SuccessState value)? successState,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PasswordVisibilityToggledState value)?
        passwordVisibilityToggledState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_SuccessState value)? successState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements SignUpState {
  const factory _ErrorState(final String message, final DateTime date) =
      _$_ErrorState;

  String get message;
  DateTime get date;
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessStateCopyWith<$Res> {
  factory _$$_SuccessStateCopyWith(
          _$_SuccessState value, $Res Function(_$_SuccessState) then) =
      __$$_SuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessStateCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements _$$_SuccessStateCopyWith<$Res> {
  __$$_SuccessStateCopyWithImpl(
      _$_SuccessState _value, $Res Function(_$_SuccessState) _then)
      : super(_value, (v) => _then(v as _$_SuccessState));

  @override
  _$_SuccessState get _value => super._value as _$_SuccessState;
}

/// @nodoc

class _$_SuccessState implements _SuccessState {
  const _$_SuccessState();

  @override
  String toString() {
    return 'SignUpState.successState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isVisible) passwordVisibilityToggledState,
    required TResult Function() loadingState,
    required TResult Function(String message, DateTime date) errorState,
    required TResult Function() successState,
  }) {
    return successState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isVisible)? passwordVisibilityToggledState,
    TResult Function()? loadingState,
    TResult Function(String message, DateTime date)? errorState,
    TResult Function()? successState,
  }) {
    return successState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isVisible)? passwordVisibilityToggledState,
    TResult Function()? loadingState,
    TResult Function(String message, DateTime date)? errorState,
    TResult Function()? successState,
    required TResult orElse(),
  }) {
    if (successState != null) {
      return successState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PasswordVisibilityToggledState value)
        passwordVisibilityToggledState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ErrorState value) errorState,
    required TResult Function(_SuccessState value) successState,
  }) {
    return successState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PasswordVisibilityToggledState value)?
        passwordVisibilityToggledState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_SuccessState value)? successState,
  }) {
    return successState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PasswordVisibilityToggledState value)?
        passwordVisibilityToggledState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_SuccessState value)? successState,
    required TResult orElse(),
  }) {
    if (successState != null) {
      return successState(this);
    }
    return orElse();
  }
}

abstract class _SuccessState implements SignUpState {
  const factory _SuccessState() = _$_SuccessState;
}
