import 'package:solid_examples/Section%204%20_%20LSP/4.2/refactor/file_reader.dart';
import 'package:solid_examples/Section%204%20_%20LSP/4.2/refactor/secure_reader.dart';

void main() {
  
  FileReader secureReader = SecureReader();
  secureReader.readFile('/public') == null
      ? print('cant read this file')
      : print(secureReader.readFile('/public'));
}
