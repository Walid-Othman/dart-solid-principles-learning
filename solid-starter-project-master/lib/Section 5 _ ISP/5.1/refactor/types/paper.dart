

import 'package:solid_examples/Section%205%20_%20ISP/5.1/refactor/classes/Scanable.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.1/refactor/classes/faxable.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.1/refactor/classes/prentable.dart';

class Paper implements Prentable ,Scanable ,Faxable {
  Paper({required this.content});
  String content;
  @override
  void printDocument() {
    print('Printing contract: $content');
  }

  @override
  void scan() {
    print('Scanning contract: $content');
  }

  @override
  void fax() {
    print('Faxing contract: $content');
  }
}
