import 'package:solid_examples/Section%203%20_%20OCP/3.1/refactor/generate/report_generator.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.1/refactor/model/report_model.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.1/refactor/strong_keys/strong_keys.dart';

class HtmlGenerator implements ReportGenerator {
  @override
  String get formatName => StrongKeys.html;
  @override
  generate(ReportModel data) {
     return '<html><h1>${data.title}</h1><ul>${data.items.map((item) => '<li>$item</li>').join()}</ul></html>';
  }
}
