import 'package:solid_examples/Section%205%20_%20ISP/5.1/refactor/classes/prentable.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.1/refactor/classes/viewable.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.1/refactor/types/degtal.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.1/refactor/types/paper.dart';


class DocumentProcessor {
  void processDocument(Prentable doc) {
      doc.printDocument();
  }

  void view(Viewable doc){
    doc.view();
  }
}

void main() {
  DocumentProcessor documentProcessor = DocumentProcessor();
  documentProcessor.processDocument(Paper(content: "hello Walid"));
  documentProcessor.view(Degtal(content: "hello"));
}


