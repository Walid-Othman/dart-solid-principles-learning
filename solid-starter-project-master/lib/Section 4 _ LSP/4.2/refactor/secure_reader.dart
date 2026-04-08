import 'package:solid_examples/Section%204%20_%20LSP/4.2/refactor/file_reader.dart';

class SecureReader implements FileReader {
  final List<String> allowedPaths = ['/public', '/shared'];
  @override
  bool canRead(String path) {
    if (!allowedPaths.any((allowed) => path.startsWith(allowed))) {
      return false;
    }
    return true;
  }

  @override
  String? readFile(String path) {
if(!canRead(path)) return null ;
return 'Secure file contents from $path';
  }
}

