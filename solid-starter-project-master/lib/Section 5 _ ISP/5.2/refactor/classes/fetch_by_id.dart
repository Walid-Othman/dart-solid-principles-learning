import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/model/artcle.dart';

abstract interface class FetchById {
  Future<ArticleModel> fetchById(String id);
}
