import 'package:data/data.dart';
import 'package:domain/domain.dart';

class CreateCreditCardRequest extends NetworkRequest {
  CreateCreditCardRequest({
    required this.creditCard,
    required String customerId,
    required String url,
  }) : super(url: url.replaceAll('{customerId}', customerId));

  final CreditCard creditCard;

  @override
  String? get body {
    final body = {
      _AttributesKeys.cvc: creditCard.cvc,
      _AttributesKeys.expirationMonth: creditCard.expirationMonth,
      _AttributesKeys.expirationYear: creditCard.expirationYear,
      _AttributesKeys.id: creditCard.id,
      _AttributesKeys.name: creditCard.name,
      _AttributesKeys.number: creditCard.number,
      _AttributesKeys.source: creditCard.source,
    };

    body.removeWhere((key, value) => value == null);

    return body.keys.map((key) => '$key=${body[key]}').join('&');
  }
}

class _AttributesKeys {
  static const String cvc = 'cvc';
  static const String expirationMonth = 'exp_month';
  static const String expirationYear = 'exp_year';
  static const String id = 'id';
  static const String name = 'name';
  static const String number = 'number';
  static const String source = 'source';
}
