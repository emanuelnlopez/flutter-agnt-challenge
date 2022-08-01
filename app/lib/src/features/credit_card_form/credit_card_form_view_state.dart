import 'package:freezed_annotation/freezed_annotation.dart';

part 'credit_card_form_view_state.freezed.dart';

@freezed
class CreditCardFormViewState with _$CreditCardFormViewState {
  const factory CreditCardFormViewState.success() =
      CreditCardFormViewStateSuccess;
  const factory CreditCardFormViewState.error({String? errorMessage}) =
      CreditCardFormViewStateError;
  const factory CreditCardFormViewState.initial() =
      CreditCardFormViewStateInitial;
  const factory CreditCardFormViewState.loading({String? message}) =
      CreditCardFormViewStateLoading;
}
