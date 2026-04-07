import 'package:solid_examples/Section%204%20_%20LSP/4.1/refactor/base/refandable_payment.dart';

class BankPayment extends RefandablePayment {
  BankPayment({
    required this.accountNumber,
    required this.holderName,
    required this.bankName,
    required this.routingNumber,
  });
  String bankName;
  String routingNumber;

  @override
  String holderName;

  @override
  String accountNumber;

  @override
  bool processRefund(double amount) {
    print(
      'Depositing refund of \$$amount to $bankName account: $accountNumber',
    );
    return true;
  }

  @override
  bool processPayment(double amount) {
    print('Withdrawing \$$amount from $bankName account: $accountNumber');
    return true;
  }
}
