import 'package:solid_examples/Section%203%20_%20OCP/3.3/refactor/prossor_model.dart';

class Validator {
  bool validation(ProssorModel process) {
    if (process.filePath.isEmpty) {
      print('Error: File path is empty');
      return false;
    } else if (process.content.isEmpty) {
      print('Error: Content is empty');
      print('Error: please enter your content ');
      return false;
    }
    return true;
  }
}
