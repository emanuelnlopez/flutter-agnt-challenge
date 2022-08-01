import 'package:data/data.dart';

class FetchCustomerCreditCardsRequest extends NetworkRequest {
  FetchCustomerCreditCardsRequest({
    required String customerId,
    required String url,
  }) : super(url: url.replaceAll('{customerId}', customerId));

  @override
  String? get body => 'object=card&limit=10';
}
