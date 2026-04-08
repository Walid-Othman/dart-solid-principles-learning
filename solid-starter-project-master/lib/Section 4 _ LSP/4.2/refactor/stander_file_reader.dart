
import 'package:solid_examples/Section%204%20_%20LSP/4.2/refactor/file_reader.dart';

class StanderFileReader  implements FileReader {
  @override
  String readFile(String path) {
   return 'File contents from $path';
  }
  @override
  bool canRead(String path) {
  return true;
  }
}