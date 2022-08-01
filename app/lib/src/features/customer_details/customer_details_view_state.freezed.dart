// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_details_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerDetailsViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CreditCard> cards) success,
    required TResult Function(String? errorMessage) error,
    required TResult Function() initial,
    required TResult Function(String? message) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<CreditCard> cards)? success,
    TResult Function(String? errorMessage)? error,
    TResult Function()? initial,
    TResult Function(String? message)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CreditCard> cards)? success,
    TResult Function(String? errorMessage)? error,
    TResult Function()? initial,
    TResult Function(String? message)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerDetailsViewStateSuccess value) success,
    required TResult Function(CustomerDetailsViewStateError value) error,
    required TResult Function(CustomerDetailsViewStateInitial value) initial,
    required TResult Function(CustomerDetailsViewStateLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomerDetailsViewStateSuccess value)? success,
    TResult Function(CustomerDetailsViewStateError value)? error,
    TResult Function(CustomerDetailsViewStateInitial value)? initial,
    TResult Function(CustomerDetailsViewStateLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerDetailsViewStateSuccess value)? success,
    TResult Function(CustomerDetailsViewStateError value)? error,
    TResult Function(CustomerDetailsViewStateInitial value)? initial,
    TResult Function(CustomerDetailsViewStateLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDetailsViewStateCopyWith<$Res> {
  factory $CustomerDetailsViewStateCopyWith(CustomerDetailsViewState value,
          $Res Function(CustomerDetailsViewState) then) =
      _$CustomerDetailsViewStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomerDetailsViewStateCopyWithImpl<$Res>
    implements $CustomerDetailsViewStateCopyWith<$Res> {
  _$CustomerDetailsViewStateCopyWithImpl(this._value, this._then);

  final CustomerDetailsViewState _value;
  // ignore: unused_field
  final $Res Function(CustomerDetailsViewState) _then;
}

/// @nodoc
abstract class _$$CustomerDetailsViewStateSuccessCopyWith<$Res> {
  factory _$$CustomerDetailsViewStateSuccessCopyWith(
          _$CustomerDetailsViewStateSuccess value,
          $Res Function(_$CustomerDetailsViewStateSuccess) then) =
      __$$CustomerDetailsViewStateSuccessCopyWithImpl<$Res>;
  $Res call({List<CreditCard> cards});
}

/// @nodoc
class __$$CustomerDetailsViewStateSuccessCopyWithImpl<$Res>
    extends _$CustomerDetailsViewStateCopyWithImpl<$Res>
    implements _$$CustomerDetailsViewStateSuccessCopyWith<$Res> {
  __$$CustomerDetailsViewStateSuccessCopyWithImpl(
      _$CustomerDetailsViewStateSuccess _value,
      $Res Function(_$CustomerDetailsViewStateSuccess) _then)
      : super(_value, (v) => _then(v as _$CustomerDetailsViewStateSuccess));

  @override
  _$CustomerDetailsViewStateSuccess get _value =>
      super._value as _$CustomerDetailsViewStateSuccess;

  @override
  $Res call({
    Object? cards = freezed,
  }) {
    return _then(_$CustomerDetailsViewStateSuccess(
      cards: cards == freezed
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CreditCard>,
    ));
  }
}

/// @nodoc

class _$CustomerDetailsViewStateSuccess
    implements CustomerDetailsViewStateSuccess {
  const _$CustomerDetailsViewStateSuccess(
      {required final List<CreditCard> cards})
      : _cards = cards;

  final List<CreditCard> _cards;
  @override
  List<CreditCard> get cards {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString() {
    return 'CustomerDetailsViewState.success(cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerDetailsViewStateSuccess &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cards));

  @JsonKey(ignore: true)
  @override
  _$$CustomerDetailsViewStateSuccessCopyWith<_$CustomerDetailsViewStateSuccess>
      get copyWith => __$$CustomerDetailsViewStateSuccessCopyWithImpl<
          _$CustomerDetailsViewStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CreditCard> cards) success,
    required TResult Function(String? errorMessage) error,
    required TResult Function() initial,
    required TResult Function(String? message) loading,
  }) {
    return success(cards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<CreditCard> cards)? success,
    TResult Function(String? errorMessage)? error,
    TResult Function()? initial,
    TResult Function(String? message)? loading,
  }) {
    return success?.call(cards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CreditCard> cards)? success,
    TResult Function(String? errorMessage)? error,
    TResult Function()? initial,
    TResult Function(String? message)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(cards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerDetailsViewStateSuccess value) success,
    required TResult Function(CustomerDetailsViewStateError value) error,
    required TResult Function(CustomerDetailsViewStateInitial value) initial,
    required TResult Function(CustomerDetailsViewStateLoading value) loading,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomerDetailsViewStateSuccess value)? success,
    TResult Function(CustomerDetailsViewStateError value)? error,
    TResult Function(CustomerDetailsViewStateInitial value)? initial,
    TResult Function(CustomerDetailsViewStateLoading value)? loading,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerDetailsViewStateSuccess value)? success,
    TResult Function(CustomerDetailsViewStateError value)? error,
    TResult Function(CustomerDetailsViewStateInitial value)? initial,
    TResult Function(CustomerDetailsViewStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CustomerDetailsViewStateSuccess
    implements CustomerDetailsViewState {
  const factory CustomerDetailsViewStateSuccess(
          {required final List<CreditCard> cards}) =
      _$CustomerDetailsViewStateSuccess;

  List<CreditCard> get cards;
  @JsonKey(ignore: true)
  _$$CustomerDetailsViewStateSuccessCopyWith<_$CustomerDetailsViewStateSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomerDetailsViewStateErrorCopyWith<$Res> {
  factory _$$CustomerDetailsViewStateErrorCopyWith(
          _$CustomerDetailsViewStateError value,
          $Res Function(_$CustomerDetailsViewStateError) then) =
      __$$CustomerDetailsViewStateErrorCopyWithImpl<$Res>;
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$CustomerDetailsViewStateErrorCopyWithImpl<$Res>
    extends _$CustomerDetailsViewStateCopyWithImpl<$Res>
    implements _$$CustomerDetailsViewStateErrorCopyWith<$Res> {
  __$$CustomerDetailsViewStateErrorCopyWithImpl(
      _$CustomerDetailsViewStateError _value,
      $Res Function(_$CustomerDetailsViewStateError) _then)
      : super(_value, (v) => _then(v as _$CustomerDetailsViewStateError));

  @override
  _$CustomerDetailsViewStateError get _value =>
      super._value as _$CustomerDetailsViewStateError;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$CustomerDetailsViewStateError(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CustomerDetailsViewStateError implements CustomerDetailsViewStateError {
  const _$CustomerDetailsViewStateError({this.errorMessage});

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'CustomerDetailsViewState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerDetailsViewStateError &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$CustomerDetailsViewStateErrorCopyWith<_$CustomerDetailsViewStateError>
      get copyWith => __$$CustomerDetailsViewStateErrorCopyWithImpl<
          _$CustomerDetailsViewStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CreditCard> cards) success,
    required TResult Function(String? errorMessage) error,
    required TResult Function() initial,
    required TResult Function(String? message) loading,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<CreditCard> cards)? success,
    TResult Function(String? errorMessage)? error,
    TResult Function()? initial,
    TResult Function(String? message)? loading,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CreditCard> cards)? success,
    TResult Function(String? errorMessage)? error,
    TResult Function()? initial,
    TResult Function(String? message)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerDetailsViewStateSuccess value) success,
    required TResult Function(CustomerDetailsViewStateError value) error,
    required TResult Function(CustomerDetailsViewStateInitial value) initial,
    required TResult Function(CustomerDetailsViewStateLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomerDetailsViewStateSuccess value)? success,
    TResult Function(CustomerDetailsViewStateError value)? error,
    TResult Function(CustomerDetailsViewStateInitial value)? initial,
    TResult Function(CustomerDetailsViewStateLoading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerDetailsViewStateSuccess value)? success,
    TResult Function(CustomerDetailsViewStateError value)? error,
    TResult Function(CustomerDetailsViewStateInitial value)? initial,
    TResult Function(CustomerDetailsViewStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CustomerDetailsViewStateError
    implements CustomerDetailsViewState {
  const factory CustomerDetailsViewStateError({final String? errorMessage}) =
      _$CustomerDetailsViewStateError;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$CustomerDetailsViewStateErrorCopyWith<_$CustomerDetailsViewStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomerDetailsViewStateInitialCopyWith<$Res> {
  factory _$$CustomerDetailsViewStateInitialCopyWith(
          _$CustomerDetailsViewStateInitial value,
          $Res Function(_$CustomerDetailsViewStateInitial) then) =
      __$$CustomerDetailsViewStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CustomerDetailsViewStateInitialCopyWithImpl<$Res>
    extends _$CustomerDetailsViewStateCopyWithImpl<$Res>
    implements _$$CustomerDetailsViewStateInitialCopyWith<$Res> {
  __$$CustomerDetailsViewStateInitialCopyWithImpl(
      _$CustomerDetailsViewStateInitial _value,
      $Res Function(_$CustomerDetailsViewStateInitial) _then)
      : super(_value, (v) => _then(v as _$CustomerDetailsViewStateInitial));

  @override
  _$CustomerDetailsViewStateInitial get _value =>
      super._value as _$CustomerDetailsViewStateInitial;
}

/// @nodoc

class _$CustomerDetailsViewStateInitial
    implements CustomerDetailsViewStateInitial {
  const _$CustomerDetailsViewStateInitial();

  @override
  String toString() {
    return 'CustomerDetailsViewState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerDetailsViewStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CreditCard> cards) success,
    required TResult Function(String? errorMessage) error,
    required TResult Function() initial,
    required TResult Function(String? message) loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<CreditCard> cards)? success,
    TResult Function(String? errorMessage)? error,
    TResult Function()? initial,
    TResult Function(String? message)? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CreditCard> cards)? success,
    TResult Function(String? errorMessage)? error,
    TResult Function()? initial,
    TResult Function(String? message)? loading,
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
    required TResult Function(CustomerDetailsViewStateSuccess value) success,
    required TResult Function(CustomerDetailsViewStateError value) error,
    required TResult Function(CustomerDetailsViewStateInitial value) initial,
    required TResult Function(CustomerDetailsViewStateLoading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomerDetailsViewStateSuccess value)? success,
    TResult Function(CustomerDetailsViewStateError value)? error,
    TResult Function(CustomerDetailsViewStateInitial value)? initial,
    TResult Function(CustomerDetailsViewStateLoading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerDetailsViewStateSuccess value)? success,
    TResult Function(CustomerDetailsViewStateError value)? error,
    TResult Function(CustomerDetailsViewStateInitial value)? initial,
    TResult Function(CustomerDetailsViewStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CustomerDetailsViewStateInitial
    implements CustomerDetailsViewState {
  const factory CustomerDetailsViewStateInitial() =
      _$CustomerDetailsViewStateInitial;
}

/// @nodoc
abstract class _$$CustomerDetailsViewStateLoadingCopyWith<$Res> {
  factory _$$CustomerDetailsViewStateLoadingCopyWith(
          _$CustomerDetailsViewStateLoading value,
          $Res Function(_$CustomerDetailsViewStateLoading) then) =
      __$$CustomerDetailsViewStateLoadingCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$CustomerDetailsViewStateLoadingCopyWithImpl<$Res>
    extends _$CustomerDetailsViewStateCopyWithImpl<$Res>
    implements _$$CustomerDetailsViewStateLoadingCopyWith<$Res> {
  __$$CustomerDetailsViewStateLoadingCopyWithImpl(
      _$CustomerDetailsViewStateLoading _value,
      $Res Function(_$CustomerDetailsViewStateLoading) _then)
      : super(_value, (v) => _then(v as _$CustomerDetailsViewStateLoading));

  @override
  _$CustomerDetailsViewStateLoading get _value =>
      super._value as _$CustomerDetailsViewStateLoading;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$CustomerDetailsViewStateLoading(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CustomerDetailsViewStateLoading
    implements CustomerDetailsViewStateLoading {
  const _$CustomerDetailsViewStateLoading({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'CustomerDetailsViewState.loading(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerDetailsViewStateLoading &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$CustomerDetailsViewStateLoadingCopyWith<_$CustomerDetailsViewStateLoading>
      get copyWith => __$$CustomerDetailsViewStateLoadingCopyWithImpl<
          _$CustomerDetailsViewStateLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CreditCard> cards) success,
    required TResult Function(String? errorMessage) error,
    required TResult Function() initial,
    required TResult Function(String? message) loading,
  }) {
    return loading(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<CreditCard> cards)? success,
    TResult Function(String? errorMessage)? error,
    TResult Function()? initial,
    TResult Function(String? message)? loading,
  }) {
    return loading?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CreditCard> cards)? success,
    TResult Function(String? errorMessage)? error,
    TResult Function()? initial,
    TResult Function(String? message)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerDetailsViewStateSuccess value) success,
    required TResult Function(CustomerDetailsViewStateError value) error,
    required TResult Function(CustomerDetailsViewStateInitial value) initial,
    required TResult Function(CustomerDetailsViewStateLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomerDetailsViewStateSuccess value)? success,
    TResult Function(CustomerDetailsViewStateError value)? error,
    TResult Function(CustomerDetailsViewStateInitial value)? initial,
    TResult Function(CustomerDetailsViewStateLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerDetailsViewStateSuccess value)? success,
    TResult Function(CustomerDetailsViewStateError value)? error,
    TResult Function(CustomerDetailsViewStateInitial value)? initial,
    TResult Function(CustomerDetailsViewStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CustomerDetailsViewStateLoading
    implements CustomerDetailsViewState {
  const factory CustomerDetailsViewStateLoading({final String? message}) =
      _$CustomerDetailsViewStateLoading;

  String? get message;
  @JsonKey(ignore: true)
  _$$CustomerDetailsViewStateLoadingCopyWith<_$CustomerDetailsViewStateLoading>
      get copyWith => throw _privateConstructorUsedError;
}
