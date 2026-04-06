import 'package:solid_examples/Section%203%20_%20OCP/3.1/refactor/generate/report_generator.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.1/refactor/model/report_model.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.1/refactor/strong_keys/strong_keys.dart';

class JsonGenerator implements ReportGenerator {
  @override
  String get formatName => StrongKeys.json;
  @override
  generate(ReportModel data) {
    return '{"title":"${data.title}", "items":"${data.items}"}';
  }
}
