import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_details_view_state.freezed.dart';

@freezed
class CustomerDetailsViewState with _$CustomerDetailsViewState {
  const factory CustomerDetailsViewState.success({
    required List<CreditCardLight> cards,
  }) = CustomerDetailsViewStateSuccess;
  const factory CustomerDetailsViewState.error({String? errorMessage}) =
      CustomerDetailsViewStateError;
  const factory CustomerDetailsViewState.initial() =
      CustomerDetailsViewStateInitial;
  const factory CustomerDetailsViewState.loading({String? message}) =
      CustomerDetailsViewStateLoading;
}
