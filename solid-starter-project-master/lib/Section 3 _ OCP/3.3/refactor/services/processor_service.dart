import 'package:solid_examples/Section%203%20_%20OCP/3.3/refactor/prossor.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.3/refactor/prossor_model.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.3/refactor/validator.dart';

class ProcessorService {
  ProcessorService(this.typeList, this.validator);
  final List<BassProssor> typeList;
  final Validator validator;
  handelProcessor(ProssorModel model, name) {
    final type = typeList.firstWhere((e) => e.formatType == name);
    if (!validator.validation(model)) return;
    type.process(model.filePath, model.content);
  }
}
