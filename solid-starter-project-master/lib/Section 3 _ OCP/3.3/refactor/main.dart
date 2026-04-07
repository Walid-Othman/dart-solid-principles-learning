import 'package:solid_examples/Section%203%20_%20OCP/3.3/refactor/prossor_model.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.3/refactor/services/processor_service.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.3/refactor/storage_keys/storge_keys.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.3/refactor/types/mark_down.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.3/refactor/types/pdf_processor.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.3/refactor/types/word_processor.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.3/refactor/validator.dart';

void main() {
  ProssorModel prossorModel = ProssorModel(
    content: "dog.pdf",
    filePath: "dog.pdf",
  );
  ProcessorService processorService = ProcessorService([
    PdfProcessor(),
    WordProcessor(),
    MarkDown(),
  ], Validator());

  processorService.handelProcessor(prossorModel, StorgeKeys.markdown);
}
