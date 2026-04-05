import 'package:solid_examples/Section%202%20_%20SRP/2.2/Services/taxes.dart';
import 'package:solid_examples/Section%202%20_%20SRP/2.2/emails/email_services.dart';
import 'package:solid_examples/Section%202%20_%20SRP/2.2/model/order_model.dart';
import 'package:solid_examples/Section%202%20_%20SRP/2.2/pdf/pdf_sevice.dart';
import 'package:solid_examples/Section%202%20_%20SRP/2.2/repo/order_repo.dart';
import 'package:solid_examples/Section%202%20_%20SRP/2.2/validator/order_validator.dart';

class HandelOrder {
  HandelOrder(
    this._validator,
    this._taxes,
    this._orderRepo,
    this._emailServices,
    this._pdfSevice,
  );

  final OrderValidator _validator;
  final Taxes _taxes;
  final OrderRepo _orderRepo;
  final EmailServices _emailServices;
  final PdfSevice _pdfSevice;

  createOrder(OrderModel order) {
    if (_validator.isValidOrder(order)) {
      _taxes.calculateTax(order.total);
      _orderRepo.saveOrder(order);

      _emailServices.sendConfirmationEmail(order);
      _pdfSevice.generateInvoice(order);
    }
  }
}
