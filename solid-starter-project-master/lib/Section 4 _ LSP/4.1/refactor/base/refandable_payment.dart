import 'package:solid_examples/Section%204%20_%20LSP/4.1/refactor/base/payment_method.dart';

abstract class RefandablePayment extends PaymentMethod {
bool processRefund(double amount);
}
