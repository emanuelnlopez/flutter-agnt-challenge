import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_customers_view_state.freezed.dart';

@freezed
class ListCustomersViewState with _$ListCustomersViewState {
  const factory ListCustomersViewState.success({
    required List<Customer> customers,
  }) = ListCustomersViewStateSuccess;
  const factory ListCustomersViewState.error({String? errorMessage}) =
      ListCustomersViewStateError;
  const factory ListCustomersViewState.initial() =
      ListCustomersViewStateInitial;
  const factory ListCustomersViewState.loading({String? message}) =
      ListCustomersViewStateLoading;
}
