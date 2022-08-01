// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_customers_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListCustomersViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Customer> customers) success,
    required TResult Function(String? errorMessage) error,
    required TResult Function() initial,
    required TResult Function(String? message) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Customer> customers)? success,
    TResult Function(String? errorMessage)? error,
    TResult Function()? initial,
    TResult Function(String? message)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Customer> customers)? success,
    TResult Function(String? errorMessage)? error,
    TResult Function()? initial,
    TResult Function(String? message)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListCustomersViewStateSuccess value) success,
    required TResult Function(ListCustomersViewStateError value) error,
    required TResult Function(ListCustomersViewStateInitial value) initial,
    required TResult Function(ListCustomersViewStateLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListCustomersViewStateSuccess value)? success,
    TResult Function(ListCustomersViewStateError value)? error,
    TResult Function(ListCustomersViewStateInitial value)? initial,
    TResult Function(ListCustomersViewStateLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListCustomersViewStateSuccess value)? success,
    TResult Function(ListCustomersViewStateError value)? error,
    TResult Function(ListCustomersViewStateInitial value)? initial,
    TResult Function(ListCustomersViewStateLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListCustomersViewStateCopyWith<$Res> {
  factory $ListCustomersViewStateCopyWith(ListCustomersViewState value,
          $Res Function(ListCustomersViewState) then) =
      _$ListCustomersViewStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListCustomersViewStateCopyWithImpl<$Res>
    implements $ListCustomersViewStateCopyWith<$Res> {
  _$ListCustomersViewStateCopyWithImpl(this._value, this._then);

  final ListCustomersViewState _value;
  // ignore: unused_field
  final $Res Function(ListCustomersViewState) _then;
}

/// @nodoc
abstract class _$$ListCustomersViewStateSuccessCopyWith<$Res> {
  factory _$$ListCustomersViewStateSuccessCopyWith(
          _$ListCustomersViewStateSuccess value,
          $Res Function(_$ListCustomersViewStateSuccess) then) =
      __$$ListCustomersViewStateSuccessCopyWithImpl<$Res>;
  $Res call({List<Customer> customers});
}

/// @nodoc
class __$$ListCustomersViewStateSuccessCopyWithImpl<$Res>
    extends _$ListCustomersViewStateCopyWithImpl<$Res>
    implements _$$ListCustomersViewStateSuccessCopyWith<$Res> {
  __$$ListCustomersViewStateSuccessCopyWithImpl(
      _$ListCustomersViewStateSuccess _value,
      $Res Function(_$ListCustomersViewStateSuccess) _then)
      : super(_value, (v) => _then(v as _$ListCustomersViewStateSuccess));

  @override
  _$ListCustomersViewStateSuccess get _value =>
      super._value as _$ListCustomersViewStateSuccess;

  @override
  $Res call({
    Object? customers = freezed,
  }) {
    return _then(_$ListCustomersViewStateSuccess(
      customers: customers == freezed
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
    ));
  }
}

/// @nodoc

class _$ListCustomersViewStateSuccess implements ListCustomersViewStateSuccess {
  const _$ListCustomersViewStateSuccess(
      {required final List<Customer> customers})
      : _customers = customers;

  final List<Customer> _customers;
  @override
  List<Customer> get customers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customers);
  }

  @override
  String toString() {
    return 'ListCustomersViewState.success(customers: $customers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListCustomersViewStateSuccess &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_customers));

  @JsonKey(ignore: true)
  @override
  _$$ListCustomersViewStateSuccessCopyWith<_$ListCustomersViewStateSuccess>
      get copyWith => __$$ListCustomersViewStateSuccessCopyWithImpl<
          _$ListCustomersViewStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Customer> customers) success,
    required TResult Function(String? errorMessage) error,
    required TResult Function() initial,
    required TResult Function(String? message) loading,
  }) {
    return success(customers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Customer> customers)? success,
    TResult Function(String? errorMessage)? error,
    TResult Function()? initial,
    TResult Function(String? message)? loading,
  }) {
    return success?.call(customers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Customer> customers)? success,
    TResult Function(String? errorMessage)? error,
    TResult Function()? initial,
    TResult Function(String? message)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(customers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListCustomersViewStateSuccess value) success,
    required TResult Function(ListCustomersViewStateError value) error,
    required TResult Function(ListCustomersViewStateInitial value) initial,
    required TResult Function(ListCustomersViewStateLoading value) loading,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListCustomersViewStateSuccess value)? success,
    TResult Function(ListCustomersViewStateError value)? error,
    TResult Function(ListCustomersViewStateInitial value)? initial,
    TResult Function(ListCustomersViewStateLoading value)? loading,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListCustomersViewStateSuccess value)? success,
    TResult Function(ListCustomersViewStateError value)? error,
    TResult Function(ListCustomersViewStateInitial value)? initial,
    TResult Function(ListCustomersViewStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ListCustomersViewStateSuccess implements ListCustomersViewState {
  const factory ListCustomersViewStateSuccess(
          {required final List<Customer> customers}) =
      _$ListCustomersViewStateSuccess;

  List<Customer> get customers;
  @JsonKey(ignore: true)
  _$$ListCustomersViewStateSuccessCopyWith<_$ListCustomersViewStateSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListCustomersViewStateErrorCopyWith<$Res> {
  factory _$$ListCustomersViewStateErrorCopyWith(
          _$ListCustomersViewStateError value,
          $Res Function(_$ListCustomersViewStateError) then) =
      __$$ListCustomersViewStateErrorCopyWithImpl<$Res>;
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$ListCustomersViewStateErrorCopyWithImpl<$Res>
    extends _$ListCustomersViewStateCopyWithImpl<$Res>
    implements _$$ListCustomersViewStateErrorCopyWith<$Res> {
  __$$ListCustomersViewStateErrorCopyWithImpl(
      _$ListCustomersViewStateError _value,
      $Res Function(_$ListCustomersViewStateError) _then)
      : super(_value, (v) => _then(v as _$ListCustomersViewStateError));

  @override
  _$ListCustomersViewStateError get _value =>
      super._value as _$ListCustomersViewStateError;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$ListCustomersViewStateError(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ListCustomersViewStateError implements ListCustomersViewStateError {
  const _$ListCustomersViewStateError({this.errorMessage});

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ListCustomersViewState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListCustomersViewStateError &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$ListCustomersViewStateErrorCopyWith<_$ListCustomersViewStateError>
      get copyWith => __$$ListCustomersViewStateErrorCopyWithImpl<
          _$ListCustomersViewStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Customer> customers) success,
    required TResult Function(String? errorMessage) error,
    required TResult Function() initial,
    required TResult Function(String? message) loading,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Customer> customers)? success,
    TResult Function(String? errorMessage)? error,
    TResult Function()? initial,
    TResult Function(String? message)? loading,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Customer> customers)? success,
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
    required TResult Function(ListCustomersViewStateSuccess value) success,
    required TResult Function(ListCustomersViewStateError value) error,
    required TResult Function(ListCustomersViewStateInitial value) initial,
    required TResult Function(ListCustomersViewStateLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListCustomersViewStateSuccess value)? success,
    TResult Function(ListCustomersViewStateError value)? error,
    TResult Function(ListCustomersViewStateInitial value)? initial,
    TResult Function(ListCustomersViewStateLoading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListCustomersViewStateSuccess value)? success,
    TResult Function(ListCustomersViewStateError value)? error,
    TResult Function(ListCustomersViewStateInitial value)? initial,
    TResult Function(ListCustomersViewStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ListCustomersViewStateError implements ListCustomersViewState {
  const factory ListCustomersViewStateError({final String? errorMessage}) =
      _$ListCustomersViewStateError;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$ListCustomersViewStateErrorCopyWith<_$ListCustomersViewStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListCustomersViewStateInitialCopyWith<$Res> {
  factory _$$ListCustomersViewStateInitialCopyWith(
          _$ListCustomersViewStateInitial value,
          $Res Function(_$ListCustomersViewStateInitial) then) =
      __$$ListCustomersViewStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListCustomersViewStateInitialCopyWithImpl<$Res>
    extends _$ListCustomersViewStateCopyWithImpl<$Res>
    implements _$$ListCustomersViewStateInitialCopyWith<$Res> {
  __$$ListCustomersViewStateInitialCopyWithImpl(
      _$ListCustomersViewStateInitial _value,
      $Res Function(_$ListCustomersViewStateInitial) _then)
      : super(_value, (v) => _then(v as _$ListCustomersViewStateInitial));

  @override
  _$ListCustomersViewStateInitial get _value =>
      super._value as _$ListCustomersViewStateInitial;
}

/// @nodoc

class _$ListCustomersViewStateInitial implements ListCustomersViewStateInitial {
  const _$ListCustomersViewStateInitial();

  @override
  String toString() {
    return 'ListCustomersViewState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListCustomersViewStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Customer> customers) success,
    required TResult Function(String? errorMessage) error,
    required TResult Function() initial,
    required TResult Function(String? message) loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Customer> customers)? success,
    TResult Function(String? errorMessage)? error,
    TResult Function()? initial,
    TResult Function(String? message)? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Customer> customers)? success,
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
    required TResult Function(ListCustomersViewStateSuccess value) success,
    required TResult Function(ListCustomersViewStateError value) error,
    required TResult Function(ListCustomersViewStateInitial value) initial,
    required TResult Function(ListCustomersViewStateLoading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListCustomersViewStateSuccess value)? success,
    TResult Function(ListCustomersViewStateError value)? error,
    TResult Function(ListCustomersViewStateInitial value)? initial,
    TResult Function(ListCustomersViewStateLoading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListCustomersViewStateSuccess value)? success,
    TResult Function(ListCustomersViewStateError value)? error,
    TResult Function(ListCustomersViewStateInitial value)? initial,
    TResult Function(ListCustomersViewStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ListCustomersViewStateInitial implements ListCustomersViewState {
  const factory ListCustomersViewStateInitial() =
      _$ListCustomersViewStateInitial;
}

/// @nodoc
abstract class _$$ListCustomersViewStateLoadingCopyWith<$Res> {
  factory _$$ListCustomersViewStateLoadingCopyWith(
          _$ListCustomersViewStateLoading value,
          $Res Function(_$ListCustomersViewStateLoading) then) =
      __$$ListCustomersViewStateLoadingCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$ListCustomersViewStateLoadingCopyWithImpl<$Res>
    extends _$ListCustomersViewStateCopyWithImpl<$Res>
    implements _$$ListCustomersViewStateLoadingCopyWith<$Res> {
  __$$ListCustomersViewStateLoadingCopyWithImpl(
      _$ListCustomersViewStateLoading _value,
      $Res Function(_$ListCustomersViewStateLoading) _then)
      : super(_value, (v) => _then(v as _$ListCustomersViewStateLoading));

  @override
  _$ListCustomersViewStateLoading get _value =>
      super._value as _$ListCustomersViewStateLoading;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ListCustomersViewStateLoading(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ListCustomersViewStateLoading implements ListCustomersViewStateLoading {
  const _$ListCustomersViewStateLoading({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ListCustomersViewState.loading(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListCustomersViewStateLoading &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ListCustomersViewStateLoadingCopyWith<_$ListCustomersViewStateLoading>
      get copyWith => __$$ListCustomersViewStateLoadingCopyWithImpl<
          _$ListCustomersViewStateLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Customer> customers) success,
    required TResult Function(String? errorMessage) error,
    required TResult Function() initial,
    required TResult Function(String? message) loading,
  }) {
    return loading(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Customer> customers)? success,
    TResult Function(String? errorMessage)? error,
    TResult Function()? initial,
    TResult Function(String? message)? loading,
  }) {
    return loading?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Customer> customers)? success,
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
    required TResult Function(ListCustomersViewStateSuccess value) success,
    required TResult Function(ListCustomersViewStateError value) error,
    required TResult Function(ListCustomersViewStateInitial value) initial,
    required TResult Function(ListCustomersViewStateLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListCustomersViewStateSuccess value)? success,
    TResult Function(ListCustomersViewStateError value)? error,
    TResult Function(ListCustomersViewStateInitial value)? initial,
    TResult Function(ListCustomersViewStateLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListCustomersViewStateSuccess value)? success,
    TResult Function(ListCustomersViewStateError value)? error,
    TResult Function(ListCustomersViewStateInitial value)? initial,
    TResult Function(ListCustomersViewStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ListCustomersViewStateLoading implements ListCustomersViewState {
  const factory ListCustomersViewStateLoading({final String? message}) =
      _$ListCustomersViewStateLoading;

  String? get message;
  @JsonKey(ignore: true)
  _$$ListCustomersViewStateLoadingCopyWith<_$ListCustomersViewStateLoading>
      get copyWith => throw _privateConstructorUsedError;
}
