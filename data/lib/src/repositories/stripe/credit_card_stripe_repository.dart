// import 'package:domain/domain.dart';
// import 'package:flutter_stripe/flutter_stripe.dart';

// class CreditCardNetworkRepository implements CreditCardRepository {
//   CreditCardNetworkRepository({required String stripePublishableKey}) {
//     Stripe.publishableKey = stripePublishableKey;
//     await Stripe.instance.applySettings();
//   }

//   @override
//   Future<void> createCreditCard({
//     required CreditCard creditCard,
//     required String customerId,
//   }) async {
//     await Stripe.instance.createPaymentMethod(
//       PaymentMethodParams.card(
//         paymentMethodData: PaymentMethodData(),
//       ),
//     );
//   }
// }
