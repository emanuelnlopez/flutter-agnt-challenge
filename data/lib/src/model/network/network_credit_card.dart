import 'package:domain/domain.dart';
import 'package:json_class/json_class.dart';

class NetworkCreditCard extends CreditCard {
  NetworkCreditCard({
    super.cvc,
    required super.expirationMonth,
    required super.expirationYear,
    required super.id,
    super.name,
    required super.number,
  });

  factory NetworkCreditCard.fromDynamic(dynamic map) => NetworkCreditCard(
        cvc: map[_AttributesKeys.cvc],
        expirationMonth: JsonClass.parseInt(
          map[_AttributesKeys.expirationMonth],
        )!,
        expirationYear: JsonClass.parseInt(
          map[_AttributesKeys.expirationYear],
        )!,
        id: map[_AttributesKeys.id],
        name: map[_AttributesKeys.name],
        number: map[_AttributesKeys.number],
      );

  static List<NetworkCreditCard> fromDynamicList(dynamic list) {
    final result = <NetworkCreditCard>[];

    if (list != null) {
      for (dynamic map in list) {
        result.add(NetworkCreditCard.fromDynamic(map));
      }
    }

    return result;
  }
}

class _AttributesKeys {
  static const String cvc = 'cvc';
  static const String expirationMonth = 'exp_month';
  static const String expirationYear = 'exp_year';
  static const String id = 'id';
  static const String name = 'name';
  static const String number = 'last4';
}
