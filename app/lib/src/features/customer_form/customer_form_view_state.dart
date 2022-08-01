import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_form_view_state.freezed.dart';

@freezed
class CustomerFormViewState with _$CustomerFormViewState {
  const factory CustomerFormViewState.success() = CustomerFormViewStateSuccess;
  const factory CustomerFormViewState.error({String? errorMessage}) =
      CustomerFormViewStateError;
  const factory CustomerFormViewState.initial() = CustomerFormViewStateInitial;
  const factory CustomerFormViewState.loading({String? message}) =
      CustomerFormViewStateLoading;
}
