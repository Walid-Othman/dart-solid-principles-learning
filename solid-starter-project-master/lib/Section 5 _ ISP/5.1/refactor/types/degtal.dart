
import 'package:solid_examples/Section%205%20_%20ISP/5.1/refactor/classes/emailable.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.1/refactor/classes/viewable.dart';

class Degtal implements Viewable , Emailable  {
  Degtal({required this.content});

  String content;
  @override
  void view() {
    print('Viewing digital report: $content');
  }

  @override
  email() {
print('Email send successfully');
  }
}
