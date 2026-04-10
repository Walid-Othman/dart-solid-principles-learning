import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/model/artcle.dart';

abstract interface class FetchAll {
  Future<List<ArticleModel>> fetchAll();
}
