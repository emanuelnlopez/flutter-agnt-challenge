class CreditCardLight {
  CreditCardLight({
    required this.brand,
    required this.country,
    required this.expirationMonth,
    required this.expirationYear,
    required this.id,
    required this.last4,
  });

  final String brand;
  final String country;
  final int expirationMonth;
  final int expirationYear;
  final String id;
  final String last4;
}
