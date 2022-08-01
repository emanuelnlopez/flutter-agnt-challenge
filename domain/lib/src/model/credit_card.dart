class CreditCard {
  CreditCard({
    required this.cvc,
    required this.expirationMonth,
    required this.expirationYear,
    this.id,
    required this.name,
    required this.number,
  });

  final String cvc;
  final int expirationMonth;
  final int expirationYear;
  final String? id;
  final String name;
  final String number;
  final String source = 'card';
}
