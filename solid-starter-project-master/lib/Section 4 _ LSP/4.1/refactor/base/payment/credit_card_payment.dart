import 'package:solid_examples/Section%204%20_%20LSP/4.1/refactor/base/refandable_payment.dart';

class CreditCardPayment extends RefandablePayment {
  CreditCardPayment({
    required this.cvv,
    required,
    required this.expiryDate,
    required this.accountNumber,
    required this.holderName,
  });
  @override
  String holderName;

  @override
  String accountNumber;

  final String cvv;
  final String expiryDate;

  @override
  bool processPayment(double amount) {
    print(
      'Charging \$$amount to credit card ending in ${accountNumber.substring(accountNumber.length - 4)}',
    );
    return true;
  }

  @override
  bool processRefund(double amount) {
    print(
      'Refunding \$$amount to credit card ending in ${accountNumber.substring(accountNumber.length - 4)}',
    );
    return true;
  }
}
