import 'package:domain/domain.dart';
import 'package:json_class/json_class.dart';

class NetworkCreditCardLight extends CreditCardLight {
  NetworkCreditCardLight({
    required super.brand,
    required super.country,
    required super.expirationMonth,
    required super.expirationYear,
    required super.id,
    required super.last4,
  });

  factory NetworkCreditCardLight.fromDynamic(dynamic map) =>
      NetworkCreditCardLight(
        brand: map[_AttributesKeys.brand],
        country: map[_AttributesKeys.country],
        expirationMonth: JsonClass.parseInt(
          map[_AttributesKeys.expirationMonth],
        )!,
        expirationYear: JsonClass.parseInt(
          map[_AttributesKeys.expirationYear],
        )!,
        id: map[_AttributesKeys.id],
        last4: map[_AttributesKeys.last4],
      );

  static List<NetworkCreditCardLight> fromDynamicList(dynamic list) {
    final result = <NetworkCreditCardLight>[];

    if (list != null) {
      for (dynamic map in list) {
        result.add(NetworkCreditCardLight.fromDynamic(map));
      }
    }

    return result;
  }
}

class _AttributesKeys {
  static const String brand = 'brand';
  static const String country = 'country';
  static const String expirationMonth = 'exp_month';
  static const String expirationYear = 'exp_year';
  static const String id = 'id';
  static const String last4 = 'last4';
}
