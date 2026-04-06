import 'package:solid_examples/Section%203%20_%20OCP/3.1/refactor/generate/report_generator.dart';

class ReportService {
  ReportService(this.typeList);
  final List<ReportGenerator> typeList;


  handelGenrator(type, model) {
    final typeGenerator = typeList.firstWhere((e) => e.formatName == type);
    return typeGenerator.generate(model);
  }
}
