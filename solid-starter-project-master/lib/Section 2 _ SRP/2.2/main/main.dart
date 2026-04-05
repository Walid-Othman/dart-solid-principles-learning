import 'package:solid_examples/Section%202%20_%20SRP/2.2/Services/handel_order.dart';
import 'package:solid_examples/Section%202%20_%20SRP/2.2/Services/taxes.dart';
import 'package:solid_examples/Section%202%20_%20SRP/2.2/emails/email_services.dart';
import 'package:solid_examples/Section%202%20_%20SRP/2.2/model/order_model.dart';
import 'package:solid_examples/Section%202%20_%20SRP/2.2/pdf/pdf_sevice.dart';
import 'package:solid_examples/Section%202%20_%20SRP/2.2/repo/order_repo.dart';
import 'package:solid_examples/Section%202%20_%20SRP/2.2/validator/order_validator.dart';

void main() {
  final HandelOrder handelOrder = HandelOrder(
    OrderValidator(),
    Taxes(),
    OrderRepo(),
    EmailServices(),
    PdfSevice(),
  );

  handelOrder.createOrder(
    OrderModel(id: "1", total: 100, items: ['item1', 'item2']),
  );
}
