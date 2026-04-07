import 'package:solid_examples/Section%203%20_%20OCP/3.3/refactor/prossor.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.3/refactor/storage_keys/storge_keys.dart';

class MarkDown implements BassProssor {
  @override
  String get formatType => StorgeKeys.markdown;

  @override
  void process(String filePath, String content) {
    print('Processing Markdown document...');
    print('Converting to MD format: $content');
    print('Saving to: $filePath');
  }
}
