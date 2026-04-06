import 'package:solid_examples/Section%203%20_%20OCP/3.1/refactor/generate/report_generator.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.1/refactor/model/report_model.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.1/refactor/strong_keys/strong_keys.dart';

class CsvGenerator implements ReportGenerator {
  @override
  String get formatName => StrongKeys.csv;
  @override
  generate(ReportModel data) {
     return '${data.title}\n${data.items.join(',')}';
  }
}
