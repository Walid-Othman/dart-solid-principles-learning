


import 'mixines/renewable.dart';

class SubscriptionService with Renewable {
  String name;
  String description;

  SubscriptionService(this.name, this.description, double price, String cycle) {
    setRenewalInfo(price, cycle);
  }

  @override
  String toString() => 'Subscription: $name - \$${getRenewalPrice()}';
}
