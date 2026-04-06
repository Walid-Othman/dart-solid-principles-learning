import 'package:solid_examples/Section%203%20_%20OCP/3.1/refactor/model/report_model.dart';

abstract interface class ReportGenerator {
  String get formatName;
  generate(ReportModel model);
}
