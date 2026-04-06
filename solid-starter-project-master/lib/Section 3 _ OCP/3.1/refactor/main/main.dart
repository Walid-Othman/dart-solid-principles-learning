import 'package:solid_examples/Section%203%20_%20OCP/3.1/refactor/model/report_model.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.1/refactor/services/report_service.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.1/refactor/strong_keys/strong_keys.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.1/refactor/types/csv_generator.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.1/refactor/types/excel.generator.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.1/refactor/types/html_generator.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.1/refactor/types/json_generator.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.1/refactor/types/pdf_generator.dart';

void main() {
  ReportModel reportModel = ReportModel(
    title: "walid",
    items: ['1', '2'],
    generatedAt: DateTime.now(),
  );

  ReportService reportService = ReportService([
    JsonGenerator(),
    PdfGenerator(),
    ExcelGenerator(),
    CsvGenerator(),
    HtmlGenerator(),
  ]);

  final type = reportService.handelGenrator(StrongKeys.html, reportModel);
  print(type);
}
