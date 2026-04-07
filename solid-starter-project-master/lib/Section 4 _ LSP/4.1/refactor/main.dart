import 'package:solid_examples/Section%204%20_%20LSP/4.1/refactor/base/payment/bank_payment.dart';

import 'package:solid_examples/Section%204%20_%20LSP/4.1/refactor/base/refandable_payment.dart';

void main() {
  RefandablePayment bankPayment = BankPayment(
    accountNumber: "123",
    holderName: "Walid",
    bankName: "maser",
    routingNumber: "1234",
  );

  bankPayment.processPayment(100);
  bankPayment.processRefund(100);
}
