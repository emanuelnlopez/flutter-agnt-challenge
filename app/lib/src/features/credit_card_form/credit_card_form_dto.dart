import 'package:domain/domain.dart';

class CreditCardFormDTO {
  CreditCardFormDTO({
    this.cvc,
    this.expirationMonth,
    this.expirationYear,
    this.id,
    this.name,
    this.number,
  });

  factory CreditCardFormDTO.fromCreditCard(CreditCard? creditCard) =>
      CreditCardFormDTO(
        cvc: creditCard?.cvc,
        expirationMonth: creditCard?.expirationMonth,
        expirationYear: creditCard?.expirationYear,
        id: creditCard?.id,
        name: creditCard?.name,
        number: creditCard?.number,
      );

  CreditCard toCreditCard() => CreditCard(
        cvc: cvc!,
        expirationMonth: expirationMonth!,
        expirationYear: expirationYear!,
        id: id,
        name: name!,
        number: number!,
      );

  String? cvc;
  int? expirationMonth;
  int? expirationYear;
  String? id;
  String? name;
  String? number;
}
