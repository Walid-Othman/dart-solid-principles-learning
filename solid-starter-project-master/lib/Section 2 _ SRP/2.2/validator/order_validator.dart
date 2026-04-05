import 'package:solid_examples/Section%202%20_%20SRP/2.2/model/order_model.dart';

class OrderValidator {
 
  // Job 1: Validation
  bool isValidOrder(OrderModel order) {
    return order.total > 0 && order.items.isNotEmpty;
  }
}