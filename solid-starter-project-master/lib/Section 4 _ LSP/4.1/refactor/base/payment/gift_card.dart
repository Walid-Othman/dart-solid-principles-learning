import 'package:solid_examples/Section%204%20_%20LSP/4.1/refactor/base/reloadable_payment.dart';

class GiftCard extends ReloadablePayment {
  GiftCard({
    required this.accountNumber,
    required this.balance,
    required this.holderName,
   
  });


  @override
  double balance;

  @override
  String holderName;

  @override
  String accountNumber;

  @override
  bool processPayment(double amount) {
    if (amount > balance) {
      print('Insufficient balance on gift card');
      return false;
    }
    balance -= amount;
    print('Paid \$$amount using gift card. Remaining balance: \$$balance');
    return true;
  }

  @override
  void reload(double amount) {
    balance += amount;
    print('Gift card reloaded with \$$amount. New balance: \$$balance');
  }
}
