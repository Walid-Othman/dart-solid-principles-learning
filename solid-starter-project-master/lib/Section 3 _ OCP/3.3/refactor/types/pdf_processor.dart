import 'package:solid_examples/Section%203%20_%20OCP/3.3/refactor/prossor.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.3/refactor/storage_keys/storge_keys.dart';

class PdfProcessor implements BassProssor {
  @override
  String get formatType => StorgeKeys.pdf;
  @override
  void process(String filePath, String content) {
    print('Processing pdf document...');
    print('Converting to DOCX format: $content');
    print('Saving to: $filePath');
  }
}
